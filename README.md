# GreenspotGrocerDB

Database design and implementation for Greenspot Grocer, a fictional family-owned online grocery store.

## PROJECT OVERVIEW

This project involves designing a scalable relational database for Greenspot Grocer to manage their inventory, sales, and customer data effectively. The database is implemented in MySQL, and the design includes an Extended Entity-Relationship (EER) diagram, table creation scripts, sample data insertion scripts, and various SQL queries for testing and business insights.

## GETTING STARTED

### **Prerequisites:**

- MySQL Server and MySQL Workbench installed on your machine.
- Basic knowledge of SQL.

### **Setting Up the Database:**

1. Clone the repository:
    ```sh
    git clone (https://github.com/Vinothinichandrakrishnan/GreenspotgroceryDB)
    ```

2. Create the database and tables:
    - Open `create_tables.sql` in MySQL Workbench and execute the script.

3. Insert sample data:
    - Open `insert_data.sql` in MySQL Workbench and execute the script.

#### **What's Inside?**

- The database schema includes tables for Items, Sales, ItemTypes, Locations, Units, and Vendors.
- Each table has meaningful names for fields and includes primary keys.
- Foreign keys are used to maintain referential integrity between tables.
- Data types are assigned appropriately based on the nature of each field.
- Sample data is loaded into these tables ensuring foreign key values match the referenced primary keys.

### Running Queries:

- Open the `.sql` files in the `queries/` directory in MySQL Workbench to run various test and business queries.

## INSIGHTS AND CONCLUSIONS

### **Anomalies and Potential Problems:**

The original dataset had redundancy, inconsistency, and scalability issues due to mixing different data types in a single table.
1. Redundancy: Repeating information about items, vendors, and locations for every sale or inventory update.
2. Inconsistency: Potential for data inconsistency if updates are not synchronized across all records.
3. Scalability: As the business grows, the single table approach will become inefficient and slow for data retrieval and updates.
4. Data Integrity: Lack of constraints like foreign keys can lead to orphaned records and integrity issues.

### **How Database Design Addresses Issues:**

1. Normalization into separate tables reduces redundancy and inconsistency.
2. Foreign keys ensure data integrity.
3. Scalability is improved as the relational model supports efficient data retrieval and updates.

### **Support for Business Growth:**

1. The database design can easily accommodate new items, vendors, and sales data.
2. Flexibility to add new tables or fields as business requirements change.

### **Future Enhancements:**

1. We can add tables for customer details (names, addresses) for better sales tracking.
2. Implement indexing for faster query performance as data volume grows.
3. Can develop additional queries and reports to support business decision-making and analytics.



