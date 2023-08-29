select country, 
    CASE
        WHEN country = 'United States' or country = 'Canada' or country = 'Mexico' then 'Countries_of_freedom'
        WHEN country = 'China' or country = 'Russia' or country = 'North Korea' then 'Countries_of_autocracy'
		WHEN country = 'Brazil' or country = 'Kazakstan' or country = 'Peru' then 'Developing_countries'
		WHEN country = 'Australia' or country = 'France' or country = 'United Kingdom' then 'Commonwealth_selection'
		WHEN country = 'Egypt' or country = 'Iraq' or country = 'United Arab Emirates' then 'Arab_league'
		WHEN country = 'Afghanistan' or country = 'Ukraine' then 'War_zone'
        ELSE 'Unclassified'
    END AS Category
from country