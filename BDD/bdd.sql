-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-11-07 18:54:51.318

-- tables
-- Table: Cocktail_created
CREATE TABLE Cocktail_created (
    id int  NOT NULL,
    name varchar(50)  NOT NULL,
    category varchar(50)  NOT NULL,
    description varchar(5000)  NOT NULL,
    User_id int  NOT NULL,
    CONSTRAINT Cocktail_created_pk PRIMARY KEY (id)
);

-- Table: Cocktail_suggested
CREATE TABLE Cocktail_suggested (
    id int  NOT NULL,
    name varchar(50)  NOT NULL,
    category varchar(50)  NOT NULL,
    ingredients varchar(2000)  NOT NULL,
    instructions varchar(5000)  NOT NULL,
    User_id int  NOT NULL,
    CONSTRAINT Cocktail_suggested_pk PRIMARY KEY (id)
);

-- Table: User
CREATE TABLE "User" (
    id serial  NOT NULL,
    username varchar(50)  NOT NULL,
    password varchar(50)  NOT NULL,
    gmail varchar(70)  NOT NULL,
    CONSTRAINT User_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: Cocktail_created_User (table: Cocktail_created)
ALTER TABLE Cocktail_created ADD CONSTRAINT Cocktail_created_User
    FOREIGN KEY (User_id)
    REFERENCES "User" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Cocktail_suggested_User (table: Cocktail_suggested)
ALTER TABLE Cocktail_suggested ADD CONSTRAINT Cocktail_suggested_User
    FOREIGN KEY (User_id)
    REFERENCES "User" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

