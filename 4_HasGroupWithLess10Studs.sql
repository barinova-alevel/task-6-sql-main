SELECT 
    g.GROUP_ID, 
    g.NAME AS GROUP_NAME, 
    COUNT(s.STUDENT_ID) AS STUDENT_COUNT
FROM [Courses].[dbo].[GROUPS] g
LEFT JOIN [Courses].[dbo].[STUDENTS] s ON g.GROUP_ID = s.GROUP_ID
GROUP BY g.GROUP_ID, g.NAME
HAVING COUNT(s.STUDENT_ID) < 10;

SELECT 
    CASE 
        WHEN EXISTS (
            SELECT 1
            FROM [Courses].[dbo].[GROUPS] g
            LEFT JOIN [Courses].[dbo].[STUDENTS] s ON g.GROUP_ID = s.GROUP_ID
            GROUP BY g.GROUP_ID
            HAVING COUNT(s.STUDENT_ID) < 10
        ) 
        THEN 'TRUE'
        ELSE 'FALSE'
    END AS HasGroupsWithLessThan10Students;
