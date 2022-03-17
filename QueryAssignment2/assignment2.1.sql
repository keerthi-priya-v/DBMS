/* Find out the number of documentaries with deleted scenes.*/

SELECT count(*) FROM film WHERE 
description like "%Documentary%" and special_features like "%Deleted scenes%"