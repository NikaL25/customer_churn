CREATE TABLE [dbo].[customer_Churn] (
    Customer_ID NVARCHAR(255),
    Gender NVARCHAR(10),
    Age INT,
    Married NVARCHAR(10),
    State NVARCHAR(100),
    Number_of_Referrals INT,
    Tenure_in_Months INT,
    Value_Deal NVARCHAR(255),
    Phone_Service NVARCHAR(10),
    Multiple_Lines NVARCHAR(10),
    Internet_Service NVARCHAR(50),
    Internet_Type NVARCHAR(50),
    Online_Security NVARCHAR(10),
    Online_Backup NVARCHAR(10),
    Device_Protection_Plan NVARCHAR(10),
    Premium_Support NVARCHAR(10),
    Streaming_TV NVARCHAR(10),
    Streaming_Movies NVARCHAR(10),
    Streaming_Music NVARCHAR(10),
    Unlimited_Data NVARCHAR(10),
    Contract NVARCHAR(50),
    Paperless_Billing NVARCHAR(10),
    Payment_Method NVARCHAR(50),
    Monthly_Charge FLOAT,
    Total_Charges FLOAT,
    Total_Refunds FLOAT,
    Total_Extra_Data_Charges FLOAT,
    Total_Long_Distance_Charges FLOAT,
    Total_Revenue FLOAT,
    Customer_Status NVARCHAR(50),
    Churn_Category NVARCHAR(50),
    Churn_Reason NVARCHAR(255)
);

-- Отключим проверки ошибок (если нужно) при работе с BULK INSERT
SET NOCOUNT ON;

-- Выполните Bulk Insert в таблицу
BULK INSERT [dbo].[customer_Churn]
FROM 'C:\Users\User\Downloads\Data-Resources\Data & Resources\Data\Customer_Data.csv' -- Путь к файлу CSV
WITH
(
    FIELDTERMINATOR = ',', -- Разделитель полей
    ROWTERMINATOR = '\n', -- Разделитель строк (можно использовать '\r\n' для Windows)
    FIRSTROW = 2 -- Пропускаем первую строку, так как это заголовки столбцов
);
