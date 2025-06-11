use zomato;
# Percentage of Resturants based on "Has_Table_booking"
SELECT has_table_booking, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM zomato_dataset) AS percentage
FROM zomato_dataset
GROUP BY has_table_booking;

# Percentage of Resturants based on "Has_online_delivery"
SELECT has_online_delivery, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM zomato_dataset) AS percentage
FROM zomato_dataset
GROUP BY has_online_delivery;

# Percentage of Resturants based on "is_deliverying_now"
SELECT is_delivering_now, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM zomato_dataset) AS percentage
FROM zomato_dataset
GROUP BY  is_delivering_now;

# Percentage of Resturants based on "price_range"
SELECT price_range, COUNT(*) * 100.0 / (SELECT COUNT(*) FROM zomato_dataset) AS percentage
FROM zomato_dataset
GROUP BY  price_range;

# Count of Resturants based on Average Ratings
SELECT rating, COUNT(restaurantid) AS restaurant_count
FROM zomato_dataset
GROUP BY rating;

# Find the Numbers of Resturants based on City 
SELECT city, COUNT(DISTINCT restaurantid) AS restaurant_count
FROM zomato_dataset
GROUP BY city
ORDER BY restaurant_count DESC;




