import mysql.connector

# Establish connection to the database
db_connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="K@aplan001",
    database="BPL_Database"
)

# Create a cursor object to execute SQL queries
cursor = db_connection.cursor()

# Step 3: Create the Team table
create_team_table_query = """
CREATE TABLE IF NOT EXISTS Team (
    Name VARCHAR(100) PRIMARY KEY,
    City VARCHAR(100),
    Coach VARCHAR(100)
)
"""
cursor.execute(create_team_table_query)

# Step 4: Create the Player table
create_player_table_query = """
CREATE TABLE IF NOT EXISTS Player (
    PlayerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(50),
    SkillLevel INT,
    TeamName VARCHAR(100),
    FOREIGN KEY (TeamName) REFERENCES Team(Name)
)
"""
cursor.execute(create_player_table_query)

# Step 5: Create the InjuryRecord table
create_injury_record_table_query = """
CREATE TABLE IF NOT EXISTS InjuryRecord (
    InjuryID INT PRIMARY KEY,
    Description TEXT,
    PlayerID INT,
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
)
"""
cursor.execute(create_injury_record_table_query)

# Commit changes to the database
db_connection.commit()

# Example query: Select all teams
cursor.execute("SELECT * FROM Team")
teams = cursor.fetchall()
for team in teams:
    print(team)

# Remember to close connections when done
cursor.close()
db_connection.close()

