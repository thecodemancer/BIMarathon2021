INSERT INTO D_KEY (key_id, key_description)
SELECT DISTINCT 
    COALESCE(BASE.key, -1) -- This column (key_id) can remain INT64
    ,CASE COALESCE(BASE.key, -1) -- Use COALESCE here to ensure consistent input
        WHEN 0 THEN "C"
        WHEN 1 THEN "C♯/D♭"
        WHEN 2 THEN "D"
        WHEN 3 THEN "D♯/E♭"
        WHEN 4 THEN "E"
        WHEN 5 THEN "F"
        WHEN 6 THEN "F♯/G♭"
        WHEN 7 THEN "G"
        WHEN 8 THEN "G♯/A♭"
        WHEN 9 THEN "A"
        WHEN 10 THEN "A♯/B♭"
        WHEN 11 THEN "B"
        ELSE "No description" -- Change this to a STRING
    END AS key_description
FROM temp_table_4 AS BASE

INSERT INTO formal-shell-295407.test_dataset.D_EXPLICIT (explicit_id, explicit_description)
SELECT DISTINCT 
    COALESCE(BASE.explicit, -1)
    ,CASE COALESCE(BASE.explicit, -1) -- Use COALESCE here to ensure consistent input
        WHEN 0 THEN "No explicit"
        WHEN 1 THEN "Explicit"
        ELSE "No description"
    END
FROM `formal-shell-295407.test_dataset.temp_table_4` AS BASE
