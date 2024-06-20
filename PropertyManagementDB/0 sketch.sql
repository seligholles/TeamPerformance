/*
TeamPerformance 

TeamPerformanceId pk
Team varchar(25) not null not blank
ObjectNumber int not null greater than zero
RentAmount decimal(7,2) not null must be greater than zero
MonthsRented int not null greater than zero
AnnualMaintenanceCost decimal(7,2) not null 
AnnualLitigationExpense decimal(7,2) not null
WaitingTime time null
Points computed column based off of waiting time 0 points for 1:30 every addition 20 sec substract a point every 20 sec less add 1 point. Up until 3 minutes. when null then 1 point.
Rating int not null must be between 1 and 5 default 1
*/