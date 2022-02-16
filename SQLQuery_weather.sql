-- Microsoft SQL Server Management Studio 18
use Weather

-- Question data set

select * from Weather_Data;

-- Q. 1)  Find all the unique 'Wind Speed' values in the data.

SELECT DISTINCT Wind_Speed_km_h
FROM Weather_Data

-- Q. 2) Find the number of times when the 'Weather is exactly Clear'.

SELECT *
FROM Weather_Data 
where Weather = 'Clear'

-- Q. 3) Find the number of times when the 'Wind Speed was exactly 4 km/h'.
SELECT *
FROM Weather_Data 
where Wind_Speed_km_h = 4

-- Q. 4) Find out all the Null Values in the data.

SELECT *
FROM Weather_Data 

SELECT Date_Time 
FROM Weather_Data 
WHERE Date_Time IS NULL ;

SELECT Temp_C
FROM Weather_Data
WHERE Temp_C IS NULL ;

SELECT Dew_Point_Temp_C
FROM Weather_Data 
WHERE Dew_Point_Temp_C IS NULL ;


SELECT Rel_Hum -- in percentage
FROM Weather_Data 
WHERE Rel_Hum IS NULL;

SELECT Wind_Speed_km_h
FROM Weather_Data 
WHERE Wind_Speed_km_h IS NULL ;

SELECT Visibility_km
FROM Weather_Data 
WHERE Visibility_km IS NULL ;

SELECT Press_kPa
FROM Weather_Data 
WHERE Press_kPa IS NULL ;

--SELECT Weather -- now 'Weather Condition'
--FROM Weather_Data_csv wdc 
--WHERE Weather IS NULL ;

-- Q. 5) Rename the column name 'Weather' of the dataframe to 'Weather Condition'.

--- ALTER table Wather_Data rename column 'Weather' to 'Weather Condition'  --- code for SQL lite , but in SQL SERVER you have to do it manually

-- Q. 6) What is the mean 'Visibility' ?
SELECT avg(Visibility_km) as avg_Visibility
FROM Weather_Data;
-- Q. 7) What is the Standard Deviation of 'Pressure'  in this data?
SELECT STDEV(Visibility_km) as Std_Visibility
FROM Weather_Data;

-- Q. 8) What is the Variance of 'Relative Humidity' in this data ?
SELECT VAR(Rel_Hum) as Var_RelH
FROM Weather_Data;

-- Q. 9) Find all instances when 'Snow' was recorded.
SELECT * 
FROM Weather_Data
WHERE Weather_Condition = 'Snow';

-- Q. 10) Find all instances when 'Wind Speed is above 24' and 'Visibility is 25'.
SELECT * 
FROM Weather_Data
WHERE Wind_Speed_km_h >24 AND Visibility_km = 25;

-- Q. 11) What is the Mean value of each column against each 'Weather Condition ?

SELECT Weather_Condition , 
AVG(Temp_C) as AVG_TEMP_C , 
AVG(Dew_Point_Temp_C) as AVG_dew_Point,
AVG(Rel_Hum) as AVG_RelHum,
AVG(Wind_Speed_km_h) as AVG_Wind_Speed_km_h,
AVG(Visibility_km) as AVG_Visibility_km,
AVG(Press_kPa) as AVG_Press_kPa
FROM Weather_Data
Group by Weather_Condition;

-- Q. 12) What is the Minimum & Maximum value of each column against each 'Weather Condition ?
-- Min
SELECT Weather_Condition, 
MIN(Temp_C) as MIN_TEMP_C , 
MIN(Dew_Point_Temp_C) as MIN_dew_Point,
MIN(Rel_Hum) as MIN_RelHum,
MIN(Wind_Speed_km_h) as MIN_Wind_Speed_km_h,
MIN(Visibility_km) as MIN_Visibility_km,
MIN(Press_kPa) as MIN_Press_kPa
FROM Weather_Data
Group by Weather_Condition;

--- Maximum
SELECT Weather_Condition, 
MAX(Temp_C) as MAX_TEMP_C , 
MAX(Dew_Point_Temp_C) as MAX_dew_Point,
MAX(Rel_Hum) as MAX_RelHum,
MAX(Wind_Speed_km_h) as MAX_Wind_Speed_km_h,
MAX(Visibility_km) as MAX_Visibility_km,
MAX(Press_kPa) as MAX_Press_kPa
FROM Weather_Data
Group by Weather_Condition;


-- Q. 13) Show all the Records where Weather Condition is Fog.
SELECT * 
FROM Weather_Data
WHERE Weather_Condition = 'Fog'
-- Q. 14) Find all instances when 'Weather is Clear' or 'Visibility is above 40'.
SELECT *
FROM Weather_Data
WHERE Weather_Condition = 'Clear' OR Visibility_km > 40
-- Q. 15) Find all instances when :
-- A. 'Weather is Clear' and 'Relative Humidity is greater than 50'
SELECT *
FROM Weather_Data
WHERE Weather_Condition = 'Clear' AND Rel_Hum > 50 
-- or
-- B. 'Visibility is above 40'

SELECT *
FROM Weather_Data
WHERE  Visibility_km > 40  

-- combine them all 
SELECT *
FROM Weather_Data
WHERE Weather_Condition = 'Clear' AND Rel_Hum > 50  OR Visibility_km > 40  



-- Jean Noel Metche.. 


