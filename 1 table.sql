/*
Hi
Our property management company in Zurich, Switzerland manages properties throughout Switzerland.
As the CEO, I would like to measure the performance of our department managers.
Maintenance -   I expect a department manager to carry out inexpensive but sustainable repairs and maintenance work.
Rental income - Regarding rental income, he must avoid vacancies in the property and avoid rent losses as far as possible.
Leadership -    He should regularly train and provide helpful support to his team so that they can complete their tasks efficient and on schedule. 
                As a result, his team should be able to answer incoming calls on time and process the relevant tasks efficiently.
*/

use TeamPerformanceDB
go 
drop table if exists dbo.TeamPerformance
go 
create table dbo.TeamPerformance(
    TeamPerformance int not null IDENTITY PRIMARY KEY,
    Team varchar(20) not null       constraint c_Team_cannot_be_blank check (team > ''),
    ObjectNumber tinyint not null   constraint c_Object_number_cannot_be_a_negative_number check (ObjectNumber > 0)
                                    constraint u_Object_number_must_be_unique unique,
    MonthlyRent decimal (10,2)      constraint c_Monthly_rent_cannot_be_a_negative_number check (MonthlyRent > 0),
    MonthRentedOut tinyint not null     constraint  c_MonthRentedOut_must_be_between_0_and_12 check (MonthRentedOut between 0 and 12),
    YearlyMaintenanceCost decimal (12,2) not null constraint c_Yearly_Maintenance_Cost_cannot_be_a_negative_number check (YearlyMaintenanceCost >= 0),
    YearlyLitigationExpenses decimal (10,2)      constraint c_Yearly_Litigation_Expenses_cannot_be_a_negative_number check (YearlyLitigationExpenses >= 0),
    Waitingtime time                constraint c_Waitingtime_cannot_be_over_3_minutes check (Waitingtime <= '00:03:00') ,
    Rating tinyint                  constraint c_Rating_must_be_between_1_and_5_or_null check (Rating is null or Rating between 1 and 5),
    GrossYearlyIncome as MonthRentedOut * MonthlyRent persisted,
    NetYearlyIncome as (MonthRentedOut * MonthlyRent) - YearlyMaintenanceCost - IIF(YearlyLitigationExpenses > 250, YearlyLitigationExpenses, 0) persisted,
    PotentialRentIncome as MonthlyRent*12 persisted,
        constraint c_Waitingtime_and_Rating_must_be_either_null_or_have_a_value check ((Waitingtime is null and Rating is null) or (Waitingtime > '0:00' and Rating is not null))
        
)
go
 




