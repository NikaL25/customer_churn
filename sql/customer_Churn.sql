SELECT 
    Gender, 
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM customer_Churn) AS Percentage
FROM 
    customer_Churn
GROUP BY 
    Gender;



SELECT 
    Contract, 
    COUNT(Contract) AS TotalCount,
    COUNT(Contract) * 1.0 / (SELECT COUNT(*) FROM customer_Churn) AS Percentage
FROM 
    customer_Churn
GROUP BY 
    Contract;



SELECT 
	Customer_Status,
	COUNT(Customer_Status) AS TotalCount, SUM(Total_Revenue) as TotalRev,
	SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) from customer_Churn) * 100 as RevPercentage
FROM 
	customer_Churn 
GROUP BY
	Customer_Status;



SELECT 
	State,
	COUNT(State) AS TotalCount,
	COUNT(State) * 100.0 / (SELECT COUNT(*) from customer_Churn) as Percentage
FROM 
	customer_Churn 
GROUP BY
	State
ORDER BY 
	Percentage desc

SELECT Distinct Internet_Type From customer_Churn



