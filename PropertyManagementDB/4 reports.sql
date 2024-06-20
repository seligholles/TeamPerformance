--1)  How much of the rental income, was lost due to maintance costs and litigation expenses? ex. Loss of rental income due to maintance costs and litigation expenses: 16% (of the potential income)
select t.Team, PercentageLost = avg(100 - ((((t.RentAmount * t.MonthsRented) - (t.AnnualMaintenanceCost + t.AnnualLitigationExpense)) / (t.RentAmount * t.MonthsRented)) * 100))
from TeamPerformance t
where t.AnnualLitigationExpense > 250
group by t.Team
--2)  How much did we lose due to the vacancies, compared to potential profit if these were rented out? ex. Loss of rental income due to vacancies: 16% (of the potential income)
--AS I wasn't sure if you wanted me to deduct the maintenance and litigation costs from this report or just base it off of the months.
select t.Team, PercentageLost = avg(100 - (((t.RentAmount * t.MonthsRented) / (t.RentAmount * 12)) * 100))
from TeamPerformance t
group by t.Team
--3)	The customer service. ex. Customer service based on our guidelines: -20% (below average)
select t.Team, CustomerServicePercentage = avg((convert(decimal,(t.Points + t.Rating)) / 5) * 100)
from TeamPerformance t
group by t.Team
