     --Data Exploration – Check Distinct Values

     -- thi
SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 1.0 / (Select Count(*) from Customer_Data)  as Percentage
from Customer_Data
Group by Gender

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from Customer_Data)  as Percentage
from Customer_Data
Group by Contract


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from Customer_Data) * 100  as RevPercentage
from Customer_Data
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State) * 1.0 / (Select Count(*) from Customer_Data)  as Percentage
from Customer_Data
Group by State
Order by Percentage desc

-- here 1.0 or 100.0 we are multiply coz we want float value otherwise it will give 0 as int output