User Stories
============

As a user
to keep track of my favourite websites
I would like to be able to view a list of saved bookmarks

As a User
to keep track of my favourite websites
I want to mark a webpage as a favourite

User ---->  Bookmarks ----
      read                |
                          |
return list<_____________ |


To connect to sql database:
===========================
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql
