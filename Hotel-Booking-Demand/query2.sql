LOAD DATA INFILE 'C:/Users/Elaine/Desktop/hotel_bookings.csv' 
INTO TABLE hotels 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;