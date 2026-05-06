
-- -------------------------------------------------------
-- QUERY 1: Monthly Active Users (MAU)
-- Logic  : Count distinct users who performed at least one
--          activity in a given calendar month.
--          DATE_TRUNC normalises activity_date to month start
--          so all days in the same month group together.
-- -------------------------------------------------------

SELECT
    DATE_TRUNC('month', activity_date)  AS activity_month,
    COUNT(DISTINCT user_id)             AS monthly_active_users
FROM
    activity_logs
WHERE
    activity_date IS NOT NULL           -- exclude rows with missing dates
GROUP BY
    DATE_TRUNC('month', activity_date)
ORDER BY
    activity_month ASC;






-- -------------------------------------------------------
-- QUERY 2: Total & Average Session Duration by Feature
-- Logic  : Aggregate session_duration_minutes grouped by
--          feature_used to identify which features drive
--          the most engagement time.
--          AVG helps spot features with high per-session
--          depth vs. features used briefly but frequently.
-- -------------------------------------------------------

SELECT
    feature_used,
    COUNT(*)                                        AS total_sessions,
    ROUND(SUM(session_duration_minutes), 2)         AS total_duration_mins,
    ROUND(AVG(session_duration_minutes), 2)         AS avg_duration_mins,
    ROUND(MAX(session_duration_minutes), 2)         AS max_duration_mins
FROM
    activity_logs
WHERE
    session_duration_minutes IS NOT NULL            -- exclude rows with missing duration
    AND session_duration_minutes > 0               -- exclude zero-duration noise
GROUP BY
    feature_used
ORDER BY
    total_duration_mins DESC;