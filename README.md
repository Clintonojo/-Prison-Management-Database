# Prison Management Database

![Database Schema](link_to_database_schema_image)

This is a database for managing information related to inmates, cases, and facilities in a prison system. It allows you to store and retrieve data about inmates, their cases, and the facilities they are assigned to.

## Table of Contents

- [Introduction](#introduction)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Database Schema](#database-schema)
- [Sample Queries](#sample-queries)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Prison Management Database is designed to streamline the management of inmate information within a prison system. It provides a structured way to store data about inmates, including their personal details, case information, and facility assignments.

## Getting Started

### Prerequisites

Before you can use this database, you will need:

- MySQL or another compatible relational database management system (RDBMS).
- A SQL client for interacting with the database (e.g., MySQL Workbench).

### Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/Clintonojo/prison-management-database.git


   Import the SQL script provided in the sql directory into your RDBMS to create the database schema and populate it with sample data.

Connect your application or SQL client to the database using the connection details specified in the configuration file.

Usage
To use the Prison Management Database, you can:

Execute SQL queries to retrieve inmate information, case details, and facility data.
Insert, update, or delete records as needed.
Build applications that interact with the database to manage prison-related tasks.
Database Schema
The database schema consists of the following tables:

Prisoners: Stores inmate details.
Cases: Contains information about legal cases.
Facilities: Stores data about prison facilities.
Database Schema

Sample Queries
Here are some example SQL queries you can use with this database:


-- Retrieve all inmates in a specific facility
SELECT * FROM Prisoners WHERE FacilityID = 1;

-- Update the case details for a specific inmate
UPDATE Cases SET Case_Detail = 'New Case Description' WHERE CaseID = 3;

-- Insert a new inmate record
INSERT INTO Prisoners (Race, Height, Sex, Eye_Color, Prison_Sentence, CaseID, FacilityID)
VALUES ('White', 1.75, 'M', 'Brown', 10, 5, 1);

![Uploading image.png…]()
