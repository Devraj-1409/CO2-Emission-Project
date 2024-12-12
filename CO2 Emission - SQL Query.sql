SELECT * FROM Emission
ORDER BY Country

DELETE FROM Emission
WHERE Year < 1950

SELECT DISTINCT(Country) FROM Emission
ORDER BY Country

DELETE FROM Emission
WHERE Country =  'Côte d''Ivoire'

DELETE FROM Emission
WHERE Country like '%Sint%'

UPDATE Emission
SET Country = 'Palestine'
where Country like 'Occupied%'

SELECT * FROM Emission
ORDER BY Country

ALTER TABLE Emission
DROP COLUMN Other

-- Top 10 Countries
SELECT TOP(10) Country, MAX(Total) MaxByCountry FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY MAX(Total) desc

-- Top 10 Countries
SELECT TOP(10) Country, MAX(Total) MaxByCountry FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 1950
GROUP BY Country
ORDER BY MAX(Total) desc

SELECT * FROM Emission
WHERE Country like '%Sint%' AND Year = 2021

-- Bottom 10 Countries
SELECT TOP(10) Country, MIN(Total) MinByCountry FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 1950
GROUP BY Country
ORDER BY MIN(Total) asc

-- Bottom 10 Countries
SELECT TOP(10) Country, MIN(Total) MinByCountry FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY MIN(Total) asc

-- Highest Per Capita
SELECT TOP(10) Country, MAX([Per Capita]) PerCapitaByCountry FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY  MAX([Per Capita]) desc

-- Highest Per Capita
SELECT TOP(10) Country, MAX([Per Capita]) PerCapitaByCountry FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 1950
GROUP BY Country
ORDER BY  MAX([Per Capita]) desc

-- Lowest Per Capita
SELECT TOP(10) Country, MIN([Per Capita]) PerCapitaByCountry FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY  MIN([Per Capita]) asc

-- Avg
SELECT TOP(10) Country, AVG(Total) PerCapitaByCountry FROM Emission
WHERE COUNTRY <> 'Global' 
GROUP BY Country
ORDER BY  AVG(Total) desc

-- Avg
SELECT TOP(10) Country, AVG(Total) PerCapitaByCountry FROM Emission
WHERE COUNTRY <> 'Global' -- WHERE is applied before AGG fn
GROUP BY Country
ORDER BY  AVG(Total) asc

SELECT * FROM Emission 
WHERE Year =2021
ORDER BY Country

SELECT * FROM Emission 
ORDER BY Country

------------------------------------------------------------------------------------
-- Highest Coal
SELECT TOP(10) Country, MAX(CAST(Coal as DECIMAL(10,6))) HighestCoal FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY  HighestCoal desc

-- Highest Oil
SELECT TOP(10) Country, MAX(CAST(Oil as DECIMAL(10,6))) HighestOil FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY  HighestOil desc

-- Highest Gas
SELECT TOP(10) Country, MAX(CAST(Gas as DECIMAL(10,6))) HighestGas FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY  HighestGas desc

-- Highest Cement
SELECT TOP(10) Country, MAX(CAST(Cement as DECIMAL(10,6))) HighestCement FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY  HighestCement desc

-- Highest Flaring
SELECT TOP(10) Country, MAX(CAST(Flaring as DECIMAL(10,6))) HighestFlare FROM Emission
WHERE COUNTRY <> 'Global' AND Year = 2021
GROUP BY Country
ORDER BY  HighestFlare desc

-- sum() can handle null values, it just ignores them
SELECT SUM(TRY_CAST(Coal as DECIMAL(10,6))) TotalCoal,
SUM(TRY_CAST(Oil as DECIMAL(10,6))) TotalOil,
SUM(TRY_CAST(Gas as DECIMAL(10,6))) TotalGas,
SUM(TRY_CAST(Cement as DECIMAL(10,6))) TotalCement,
SUM(TRY_CAST(Flaring as DECIMAL(10,6))) TotalFlare
FROM Emission
WHERE YEAR = 2021

SELECT SUM(TRY_CAST(Coal as DECIMAL(10,6))) TotalCoal,
SUM(TRY_CAST(Oil as DECIMAL(10,6))) TotalOil,
SUM(TRY_CAST(Gas as DECIMAL(10,6))) TotalGas,
SUM(TRY_CAST(Cement as DECIMAL(10,6))) TotalCement,
SUM(TRY_CAST(Flaring as DECIMAL(10,6))) TotalFlare
FROM Emission
WHERE YEAR = 1950;

