-- Use your own MySQL database at setupmysql.utk.edu
--
-- Consider this data about a very cheery subject: layoffs
-- More on data: https://layoffdata.com/data/
--
-- Download CSV from here:
-- https://docs.google.com/spreadsheets/d/1s2FUd66fdhvKpC_tcS_CkSjYywixLl3Fa04OU8gCekQ/edit#gid=0
-- File > Download > Comma Separated Values (.csv)

-- 1. Create a table to hold this data in your database
CREATE TABLE
    warn (
        state VARCHAR(16),
        company VARCHAR(128),
        city VARCHAR(255),
        n_workers INT,
        received_date DATE,
        effective_date DATE,
        layoff_type VARCHAR(64),
        permanent VARCHAR(32),
        union_name VARCHAR(255),
        region VARCHAR(128),
        county VARCHAR(255),
        industry VARCHAR(255),
        notes VARCHAR(255)
    );

-- 2. Load the data into the newly created table and report the number of rows
LOAD DATA LOCAL INFILE 'warn.csv' 
INTO TABLE warn 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT COUNT(*)
FROM warn;

-- 3. Report on any cleaning you did outside of this file to make 2 work
--    If any cleaning is needed you can choose easy way out (ie remove problem rows)
--    If no cleaning needed leave blank and move on.

--        Cleaning is flexible; no need to do any for the credit

-- 4. Insert a new record into your table
--    use "BLAHBLAH" as the value for the state field;
--    make up the rest or reuse BLAH etc

INSERT INTO warn (state)
VALUES ("BLAHBLAH");

-- 5. Write a SELECT query to prove your row is there
SELECT *
FROM warn
WHERE state = "BLAHBLAH"

-- 6. Delete your new record from your TABLE
DELETE FROM warn
WHERE state = "BLAHBLAH"

-- 7. Repeat your query from 5 to prove your row isn't there
SELECT *
FROM warn
WHERE state = "BLAHBLAH"

-- 8. This is real data.  Do a little exploration.  Provide 1
--    SELECT query that provides some interesting tidbit.
--    The tidbit doesn't have to be mindblowing. If you're
--    stuck, start with grouping by something, aggregating something,
--    and sorting

--    A lot of flexibility here, but I'd like to see something
--    some sort of group by and sort is a pretty good option.
--    Most layoffs by state, most layoffs by company, etc

-- 9. Provide a caption for your query/results from 8

--    Varies based on 8, but would like *some* interpretation

