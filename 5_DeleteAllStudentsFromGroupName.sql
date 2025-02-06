SELECT * 
FROM [Courses].[dbo].[STUDENTS]
WHERE GROUP_ID = (
    SELECT GROUP_ID 
    FROM [Courses].[dbo].[GROUPS]
    WHERE NAME = 'SR-01'
);

DELETE FROM [Courses].[dbo].[STUDENTS]
WHERE GROUP_ID = (
    SELECT GROUP_ID 
    FROM [Courses].[dbo].[GROUPS]
    WHERE NAME = 'SR-01'
);