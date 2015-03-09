-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Create Database 'Tournament'
CREATE DATABASE tournament;

-- Create Player Tables
CREATE TABLE player(
   player_id smallserial PRIMARY KEY, -- Declaring a self incrementing unique id 
   player_name varchar(255) NOT NULL  -- Declaring varchar which must not be null
   
);

-- Create Player Scores
CREATE TABLE scores(
	match_id smallserial PRIMARY KEY, -- Declaring a self incrementing unique id 
	wins INT ,  -- The winning id of the player
	loss INT ,  -- The losing id of the player
	FOREIGN KEY (wins) references player(player_id), -- Declaring Foreign Key relationship
	FOREIGN KEY (loss) references player(player_id) -- Declaring Foreign Key relationship
);

