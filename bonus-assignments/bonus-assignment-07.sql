-- This assignment is designed to show you some fancier things you can do
-- in the read clauses that we've covered in class.
--
--
-- 1. Use aspannba_stackexchange.airbnb_reviews
--
--    A. Create a table that shows the number of missing
--       values in airbnb_reviews.comments


--    B. Create a table that shows the number of missing
--       values per field.  Use Aliasing to name your columns.


-- 2. Use aspannba_stackexchange.nba_player_stats
--
-- Data dictionary: https://www.basketball-reference.com/about/glossary.html
--
--    A. Only consider records from the 90s.  Show me the players
--       whose PTS are a multiple of 5.


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


--    C. Create a metric to judge players
--           * The metric should be a mixture of at least three
--             different stats
--           * It doesn't have to be super complex


--    D. Use your metric to assign letter grades to players
--           * Give them a letter grade based on the metric you created
