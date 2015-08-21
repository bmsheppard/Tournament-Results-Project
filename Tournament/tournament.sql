-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

--Creates a table of Players
CREATE TABLE Players (name TEXT NOT NULL,
 					  id SERIAL PRIMARY KEY);

--Creates a table of Matches
CREATE TABLE Matches (p1 INTEGER REFERENCES Players(id),
					  p2 INTEGER REFERENCES Players(id), 
					  wins INTEGER,
					  loses INTEGER);

--Creates a view of wins that can be used for each player
CREATE VIEW numWins AS 
	SELECT Players.id, COUNT(Matches.p2) AS num FROM Players
	LEFT JOIN (SELECT * FROM Matches WHERE wins > 0) AS Matches 
	ON Players.id = Matches.p1 GROUP BY Players.id;

--Creates a view that counts the number of matches played by each player
CREATE VIEW numMatches AS 
	SELECT Players.id, Count(Matches.p2) AS num FROM Players LEFT JOIN Matches 
	ON Players.id = Matches.p1 GROUP BY Players.id;

--Creates a view that keeps track of the number of wins and the number of matches each player has played
CREATE VIEW playerStandings AS
	SELECT Players.id, Players.name, numWins.num as numWins, numMatches.num as numMatches FROM Players, numWins, numMatches 
	WHERE Players.id = numWins.id and numWins.id = numMatches.id;