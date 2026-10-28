-- ============================================================
-- Databricks SQL Practice: Three-Level Namespace
-- Structure: Catalog > Schema > Table
-- Created by: Mologadi Shiri | BrightLearn Data Analytics
-- Date: October 2026
-- ============================================================

-- Step 1: Create the Catalog
CREATE CATALOG IF NOT EXISTS Varsity;

-- Step 2: Create the Schema (like a folder inside the Catalog)
CREATE SCHEMA IF NOT EXISTS Varsity.students;

-- Step 3: Create the Table
CREATE TABLE IF NOT EXISTS Varsity.students.profiles (
  student_id        INT,
  name              STRING,
  surname           STRING,
  age               INT,
  gender            STRING,
  province          STRING,
  city              STRING,
  registration_date DATE,
  active            BOOLEAN
);

-- Step 4: Insert student records
INSERT INTO Varsity.students.profiles
VALUES
  (1, 'Vee',      'Bingwa',   21, 'Female', 'Limpopo',  'Jane Furse',     '2026-06-02', true),
  (2, 'Mologadi', 'Shiri',    44, 'Female', 'Limpopo',  'Zebediela',      '2026-04-02', true),
  (3, 'Sipha',    'Kotsoana', 24, 'Male',   'Western Cape', 'Three Sisters', '2026-05-01', true);

-- Step 5: View all records
SELECT *
FROM Varsity.students.profiles;
