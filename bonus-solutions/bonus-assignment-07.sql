-- This assignment is designed to show you some fancier things you can do
-- in the read clauses that we've covered in class.
--
--
-- 1. Use aspannba_stackexchange.airbnb_reviews
--
--    A. Create a table that shows the number of missing
--       values in airbnb_reviews.comments
SELECT
  COUNT(*) - COUNT(comments)
FROM
  airbnb_reviews;

--    B. Create a table that shows the number of missing
--       values per field.  Use Aliasing to name your columns.
SELECT
  COUNT(*) - COUNT(listing_id) AS n_na_listing_id,
  COUNT(*) - COUNT(id) AS n_na__id,
  COUNT(*) - COUNT(review_date) AS n_na__review_date,
  COUNT(*) - COUNT(reviewer_id) AS n_na_reviewer_id,
  COUNT(*) - COUNT(reviewer_name) AS n_na_reviewer_name,
  COUNT(*) - COUNT(comments) AS n_na_comments
FROM
  airbnb_reviews;

-- 2. Use aspannba_stackexchange.nba_player_stats
--
-- Data dictionary: https://www.basketball-reference.com/about/glossary.html
--
--    A. Only consider records from the 90s.  Show me the players
--       whose PTS are a multiple of 5.
SELECT
  year,
  player,
  pts
FROM
  nba_player_stats
WHERE
  year BETWEEN 1990
  AND 1999
  AND PTS % 5 = 0;

--    B. Only consider records after 2000 and players whose 
--       names start with A. Show these records' FT% as is and 
--       an additional column with the FT%:
--          * Multiplied by 100
--          * Rounded to the nearest 10
--          * Formated to have a "~" infront and a "%" at the end
--          * Give this column the alias ApproxFT%
--
--       eg: if the original FT% was the 0.227
--           the output should be "~20%"
SELECT
  `FT%`,
  CONCAT('~', ROUND(100 * `FT%`, -1), '%') AS `ApproxFT%`
FROM
  nba_player_stats;

--    C. Create a metric to judge players
--           * The metric should be a mixture of at least three
--             different stats
--           * It doesn't have to be super complex
SELECT
  year,
  player,
  `FT%` * 0.33 + `FG%` * 0.33 + `3P%` * 0.33 AS avg_pct
FROM
  nba_player_stats
WHERE
  `3P%` IS NOT NULL;

--    D. Use your metric to assign letter grades to players
--           * Give them a letter grade based on the metric you created
SELECT
  year,
  player,
  `FT%` * 0.33 + `FG%` * 0.33 + `3P%` * 0.33 AS avg_pct,
  CASE
    WHEN `FT%` * 0.33 + `FG%` * 0.33 + `3P%` * 0.33 > 0.5 THEN "A"
    WHEN `FT%` * 0.33 + `FG%` * 0.33 + `3P%` * 0.33 > 0.4 THEN "B"
    WHEN `FT%` * 0.33 + `FG%` * 0.33 + `3P%` * 0.33 > 0.3 THEN "C"
    WHEN `FT%` * 0.33 + `FG%` * 0.33 + `3P%` * 0.33 > 0.2 THEN "D"
    ELSE "F"
  END AS Grade
FROM
  nba_player_stats
WHERE
  `3P%` IS NOT NULL;