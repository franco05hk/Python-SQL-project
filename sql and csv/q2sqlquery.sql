select f.title, description,
case 
		When description like '%Boring%' then 'Waste_of_time'
        WHEN description like '%Emotional%' or description like '%Fast%' THEN 'Exciting'
		WHEN description like '%Amazing%' or description like '%Brilliant%' THEN 'Great'
		WHEN description like '%Epic%' or description like '%Insightful%' THEN 'Legend'
        ELSE 'Unknown'
    END AS Comment
from film f

--sort film description into 5 main comment