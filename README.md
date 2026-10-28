# SQL Practice — Databricks Edition 
**Mologadi (Mollie) Shiri | BrightLearn Data Analytics with Python | Day 30+ of 90**

This repository documents my hands-on SQL practice using Databricks Community Edition as part of my data analytics learning journey. All code is written, tested and run by me.
---

## 🛠️ Tools Used

- **Databricks Community Edition** — cloud SQL environment
- **MySQL Workbench** — local SQL practice
- **GitHub** — version control and portfolio documentation

---

## 📚 Topics Covered So Far

| Topic | Status |
|---|---|
| CREATE TABLE | ✅ Done |
| INSERT INTO | ✅ Done |
| SELECT queries | ✅ Done |
| DISTINCT, LIMIT, ORDER BY | ✅ Done |
| Aggregate Functions (COUNT, SUM, AVG, MAX, MIN) | ✅ Done |
| GROUP BY and HAVING | ✅ Done |
| INNER JOIN | ✅ Done |
| LEFT JOIN, RIGHT JOIN | ✅ Done |
| FULL OUTER JOIN | ✅ Done |
| UNION and UNION ALL | ✅ Done |
| CASE Statement | ✅ Done |
| Three-Level Namespace (Catalog.Schema.Table) | ✅ Done |

---

## Featured: Three-Level Namespace Structure
One of the key concepts in Databricks is the three-level namespace:

Catalog → Schema → Table
This mirrors how real enterprise data platforms organise data at scale.
### Code
```sql
-- Step 1: Create the Catalog
CREATE CATALOG IF NOT EXISTS Varsity;
-- Step 2: Create the Schema
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

-- Step 4: Insert records
INSERT INTO Varsity.students.profiles
VALUES
  (1, 'Vee',      'Bingwa',   21, 'Female', 'Limpopo',     'Jane Furse',    '2026-06-02', true),
  (2, 'Mologadi', 'Shiri',    44, 'Female', 'Limpopo',     'Zebediela',     '2026-04-02', true),
  (3, 'Sipha',    'Kotsoana', 24, 'Male',   'Western Cape','Three Sisters', '2026-05-01', true);

-- Step 5: View all records
SELECT * FROM Varsity.students.profiles;
```

## JOINs Practice

Practiced all four types of JOINs using a students and classes dataset:

- **INNER JOIN** — returns only matched rows from both tables
- **LEFT JOIN** — returns all rows from the left table, NULL where no match on right
- **RIGHT JOIN** — returns all rows from the right table, NULL where no match on left
- **FULL OUTER JOIN** — returns every row from both tables, NULL where no match on either side

---## About Me

I spent 16 years in power generation in South Africa before transitioning into data analytics. I am currently enrolled in the BrightLearn 90-Day Data Analytics with Python programme and building this portfolio to document my learning in public.

📎 [LinkedIn](https://linkedin.com/in/mologadi-shiri)

---

*This repository is actively updated as I progress through my course.*
