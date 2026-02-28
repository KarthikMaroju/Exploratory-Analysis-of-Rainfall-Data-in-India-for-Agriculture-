-- =====================================
-- 1️⃣ Create Database
-- =====================================
CREATE DATABASE IF NOT EXISTS rainfall_analysis;

-- =====================================
-- 2️⃣ Use Database
-- =====================================
USE rainfall_analysis;

-- =====================================
-- 3️⃣ Create Table
-- =====================================
CREATE TABLE IF NOT EXISTS rainfall_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    month VARCHAR(20) NOT NULL,
    rainfall_mm DECIMAL(10,2) NOT NULL,
    state_name VARCHAR(100),
    year INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================================
-- 4️⃣ Insert Sample Data
-- =====================================
INSERT INTO rainfall_data (month, rainfall_mm, state_name, year)
VALUES 
('January', 120.50, 'Andhra Pradesh', 2024),
('February', 95.20, 'Telangana', 2024),
('March', 60.00, 'Tamil Nadu', 2024),
('April', 80.75, 'Karnataka', 2024),
('May', 150.40, 'Kerala', 2024);

-- =====================================
-- 5️⃣ View Data
-- =====================================
SELECT * FROM rainfall_data;

-- =====================================
-- 6️⃣ Update Data Example
-- =====================================
UPDATE rainfall_data
SET rainfall_mm = 130.00
WHERE id = 1;

-- =====================================
-- 7️⃣ Delete Data Example
-- =====================================
DELETE FROM rainfall_data
WHERE id = 5;

-- =====================================
-- 8️⃣ Search Data Example
-- =====================================
SELECT * FROM rainfall_data
WHERE state_name = 'Andhra Pradesh';

-- =====================================
-- 9️⃣ Total Rainfall by State
-- =====================================
SELECT state_name, SUM(rainfall_mm) AS total_rainfall
FROM rainfall_data
GROUP BY state_name;

-- =====================================
-- 🔟 Average Rainfall by Year
-- =====================================
SELECT year, AVG(rainfall_mm) AS avg_rainfall
FROM rainfall_data
GROUP BY year;
