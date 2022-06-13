-- Math in SQL.

SELECT 2 + 2;    -- addition

-- Review the math operators

SELECT 11.0 / 6; -- decimal division

-- Use the sum function 

SELECT (7 + 8) * 9;	-- answer: 135

-- 3. Use the percentil

SELECT
    percentile_cont(.5)
    WITHIN GROUP (ORDER BY numbers),
    percentile_disc(.5)
    WITHIN GROUP (ORDER BY numbers)
FROM percentile_test;

-- 4. Calculate percentages.

SELECT sum(pop_est_2019) AS county_sum,
       round(avg(pop_est_2019), 0) AS county_average,
       percentile_cont(.5)
       WITHIN GROUP (ORDER BY pop_est_2019) AS county_median
FROM us_counties_pop_est_2019;



