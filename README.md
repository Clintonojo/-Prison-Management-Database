# Prison Database SQL Queries

This repository contains SQL queries for managing a hypothetical "Prison Database." The database consists of tables for inmates, cases, facilities, and two views for data retrieval. Below is an overview of the SQL code and its functionality.

## Database Schema

The database consists of the following tables:

1. **Prison**: Contains information about inmates, including their race, height, sex, eye color, prison sentence, and associations with cases and facilities.

2. **CaseTable**: Stores details about legal cases, with a unique CaseID and Case_Detail.

3. **Facillity**: Represents prison facilities, each identified by a unique FacillityID, with a name and location.

## Views

Two views have been created to facilitate data retrieval:

1. **Main View (Main)**: Provides a simplified view of inmate data, including their race, sex, and prison sentence.

2. **Subcat View (Subcat)**: Offers a subset of inmate data, including inmate_id, height, eye color, and CaseID.

## Queries

Here's a summary of the SQL queries in this repository:

1. **Data Insertion**: Inserts sample data into the Prison, CaseTable, and Facillity tables to populate the database.

2. **Data Retrieval**: Queries to retrieve data from the database, such as listing inmates, cases, facilities, and using views.

3. **Data Modification**: Includes updates to inmate information and filtering records based on specific conditions.

4. **Data Analysis**: Queries for data analysis, like calculating averages and finding specific inmates.

## Usage

You can use these SQL queries as a reference for managing and querying data in the Prison Database. Modify and adapt them as needed for your specific use case.

## Important Notes

- Please make sure to adjust the sample data and queries to suit your actual database needs.
- Be cautious when using the `DROP TABLE` statement, as it permanently deletes tables and their data.
- Always use SQL queries responsibly and consider security and data integrity.

Feel free to explore, modify, and build upon these SQL queries for your own projects or educational purposes.





