--
--
--
-- Use `aspannba_stackexchange` database & information_schema
--
--
-- 1. Say hello to information_schema and do some fancy string wrangling
--
--    A. Create a list of all of the tables whose names start
--        with nfl underscore aka `nfl_`. If `nflAAAH_TRY_AGAIN` is
--        in your results your pattern matching is off.


--    B. Update your query from 1A to have two columns: the name of the "stat"
--       and the season's year.
--       Example stats: "defense", "offense", "passing"
--       Example years: 2022, 2023
--       Ensure the returned year field is integer.


--    C. Update your query from B to have fields for: the stat (see B)
--       & seasons (note that it's plural).  The first record might look like
--       |   stat  |    seasons    |
--       |:-------:|:-------------:|
--       | defense |   2022, 2023  |




-- 2. Explore scrimmage stats
--
--    A. Using nfl_scrimmage_2022
--       Create a top 10 list of the least fumbles (Fmb field)
--       per touch (Touch field).  Inlcude Player, Pos, Tm, Touch, Fmb, 
--       and fumbles per touch.
--       A "touch" counts as a rushing attempt or a reception.
--       QBs, kick returners, etc can make some records have unusual results


--    B. Using nfl_scrimmage_2022
--       Update query from A to just show those with a
--       touch count above the league average, and filter out QBs


--    C. Using nfl_scrimmage_2022 and nfl_scrimmage_2023
--       Create a top 5 list of the teams with the most yards
--       from scrimmage
-- Note: the data only goes through week 3 of 2023 season
SELECT
  MAX(GS)
FROM
  nfl_scrimmage_2023;


--    D. Using nfl_scrimmage_2022
--       Generate a simple linear regression formula
--       to predict Yds given Age.  The output should
--       be a 1 row, 1 field table. With text that says
--       "Yds = b0 + b1 * Age", but b0 & b1 need to be 
--       calculated and rounded to 2 decimal places. 
--
--       Some givens for you to work from:
--           * correlation: r = 0.0252
--           * slope:       b1 = r * sy / sx
--           * intercept:   b0 = ybar - b1 * xbar
