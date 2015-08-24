# Tournament-Results-Project
This project contains the shell to create a working Swiss-pairing tournament. I wrote my code in "tournament.sql" and "tournament.py".  I created my tables in "tournament.sql" and created all the functions to create a Swiss-pairing tournament in "tournament.py"
# How to Run
1. Download the zip file in the bottom right-hand corner
2. Open Terminal or cmd and change the directory to the vagrant folder
3. Type "vagrant up"
4. Start the virtual machine by typing "vagrant ssh" into the terminal
5. Change to the right directory by typing "cd /vagrant/tournament/
6. Create the database by typing "psql -f tournament.sql"
7. Type "\q" to quit out of PSQL
8. You can test the program by typingn "python tournament_test.py"
 

# Source Files
You can view my source code in the following files:
"tournament.sql"
"tournament.py"

# Resources
"http://www.w3schools.com/sql/" to help understand how to use SQL

"http://sqlmag.com/database-administration/sql-design-how-choose-primary-key" for more information on primary keys.
