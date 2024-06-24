use TeamPerformanceDB

select * FROM TeamPerformance



--1)  How much of the rental income, was lost due to maintance costs and litigation expenses? ex. Loss of rental income due to maintance costs and litigation expenses: 16% (of the potential income)
--    But, only include the (whole) litigation expenses in the loss, if there where over 250. If there were less than 250, don't include them in the loss at all!

SELECT m.Team, Gross=sum( m.GrossYearlyIncome), Net=sum( m.NetYearlyIncome) , LossOfRentalIncome=CONVERT(DECIMAL(5,2),(((sum( m.GrossYearlyIncome) - sum( m.NetYearlyIncome)) / sum( m.GrossYearlyIncome) ) * 100)) 
from TeamPerformance m
group by m.Team
order by LossOfRentalIncome



--2)  How much did we lose due to the vacancies, compared to potential profit if these were rented out? ex. Loss of rental income due to vacancies: 16% (of the potential income)

select m.Team, Gross=sum( m.GrossYearlyIncome), Potential=sum( m.PotentialRentIncome), LoseDueVaccanices=CONVERT(DECIMAL(5,2),(((sum( m.PotentialRentIncome) - sum( m.GrossYearlyIncome)) / sum( m.PotentialRentIncome)) * 100)) 
from TeamPerformance m
group by m.Team
order by LoseDueVaccanices


--3)	The customer service. ex. Customer service based on our guidelines: -20% (below average)

select m.Team, EfficiencyOfCallProcessing=CONVERT(DECIMAL(5,2),(((5.0 - (SUM( DATEDIFF(SECOND, isnull( m.Waitingtime, '0:01:11'), '0:01:30'))/20 + SUM(m.Rating) )) / -5.0) * 100)) 
from TeamPerformance m
group by m.team
order by EfficiencyOfCallProcessing desc 

