CREATE OR REPLACE TABLE `uber-data-project-397500.uber_data_mu.tbl_analytics` AS (
SELECT 
f.trip_distance_id,
f.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pick.pickup_latitude,
pick.pickup_longitude,
drop.dropoff_latitude,
drop.dropoff_longitude,
pay.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge,
f.total_amount
FROM 

`uber-data-project-397500.uber_data_mu.fact_table` f
JOIN `uber-data-project-397500.uber_data_mu.datetime_dim` d  ON f.datetime_id=d.datetime_id
JOIN `uber-data-project-397500.uber_data_mu.passenger_count_dim` p  ON p.passenger_count_id=f.passenger_count_id  
JOIN `uber-data-project-397500.uber_data_mu.trip_distance_dim` t  ON t.trip_distance_id=f.trip_distance_id  
JOIN `uber-data-project-397500.uber_data_mu.rate_code_dim` r ON r.rate_code_id=f.rate_code_id  
JOIN `uber-data-project-397500.uber_data_mu.pickup_location_dim` pick ON pick.pickup_location_id=f.pickup_location_id
JOIN `uber-data-project-397500.uber_data_mu.drop_location_dim` drop ON drop.dropoff_location_id=f.dropoff_location_id
JOIN `uber-data-project-397500.uber_data_mu.payment_type_dim` pay ON pay.payment_type_id=f.payment_type_id)
;