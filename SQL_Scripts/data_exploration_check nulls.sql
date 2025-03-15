select gender, count(gender) as totalcount,
count(gender)*100.0 / (select count(*) from stg_Churn) as percentage
from stg_churn
group by gender

select contract, count(contract) as totalcount,
count(contract)*1.0 / (select count(*) from stg_churn) as percentage
from stg_churn
group by Contract

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_Churn) * 100  as RevPercentage
from stg_Churn
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State)*100.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc

select distinct internet_type
from stg_Churn