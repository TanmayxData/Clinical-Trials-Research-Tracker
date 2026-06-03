-- create database ctrt;

use ctrt;

CREATE TABLE clinical_trials_validated (
    NCT_Number TEXT,
    Study_Title TEXT,
    Study_Status TEXT,
    Conditions TEXT,
    Sponsor TEXT,
    Phases TEXT,
    Study_Type TEXT,
    Start_Date TEXT,
    Completion_Date TEXT,
    Country TEXT
);


-- 1. VIEW COMPLETE DATASET

SELECT * FROM clinical_trials_validated;


-- 2. TOTAL NUMBER OF TRIALS

SELECT COUNT(*) AS total_trials
FROM clinical_trials_validated;


-- 3. TOTAL NUMBER OF SPONSORS

SELECT COUNT(DISTINCT Sponsor) AS total_sponsors
FROM clinical_trials_validated;


-- 4. TOTAL NUMBER OF COUNTRIES

SELECT COUNT(DISTINCT Country) AS total_countries
FROM clinical_trials_validated;


-- 5. TRIALS BY STATUS

SELECT `Study_Status`, COUNT(*) AS total_trials FROM clinical_trials_validated
GROUP BY `Study_Status`
ORDER BY total_trials DESC;


-- 6. TRIALS BY PHASE

SELECT Phases, COUNT(*) AS total_trials FROM clinical_trials_validated
GROUP BY Phases
ORDER BY total_trials DESC;


-- 7. TOP 10 SPONSORS

SELECT Sponsor, COUNT(*) AS total_trials FROM clinical_trials_validated
GROUP BY Sponsor
ORDER BY total_trials DESC
LIMIT 10;


-- 8. TOP 10 DISEASE AREAS

SELECT Conditions, COUNT(*) AS total_trials FROM clinical_trials_validated
GROUP BY Conditions
ORDER BY total_trials DESC
LIMIT 10;


-- 9. TRIALS BY COUNTRY

SELECT Country, COUNT(*) AS total_trials FROM clinical_trials_validated
GROUP BY Country
ORDER BY total_trials DESC;


-- 10. STUDY TYPE DISTRIBUTION

SELECT `Study_Type`, COUNT(*) AS total_trials FROM clinical_trials_validated
GROUP BY `Study_Type`
ORDER BY total_trials DESC;



-- 11. TRIALS STARTED EACH YEAR

SELECT YEAR(`Start_Date`) AS trial_year, COUNT(*) AS total_trials FROM clinical_trials_validated
GROUP BY YEAR(`Start_Date`)
ORDER BY trial_year;


-- 12. TOP 10 SPONSORS WITH COMPLETED TRIALS

SELECT Sponsor, COUNT(*) AS completed_trials FROM clinical_trials_validated
WHERE `Study_Status` = 'COMPLETED'
GROUP BY Sponsor
ORDER BY completed_trials DESC
LIMIT 10;


-- 13. DATA QUALITY CHECKS

SELECT* FROM clinical_trials_validated 
WHERE Sponsor IS NULL OR Sponsor = '';




-- 14. FINAL KPI SUMMARY

SELECT COUNT(*) AS total_trials,
    COUNT(DISTINCT Sponsor) AS total_sponsors,
    COUNT(DISTINCT Country) AS total_countries,
    COUNT(DISTINCT Conditions) AS total_conditions
FROM clinical_trials_validated;
