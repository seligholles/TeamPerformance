use PropertyManagementDB
go 
drop table if exists TeamPerformance 
go

create table dbo.TeamPerformance(
    TeamPerformanceId int not null identity primary key,
    Team varchar(25) not null constraint ck_TeamPerformance_Team_cannot_be_Blank check(Team <> ''),
    ObjectNumber int not null constraint ck_TeamPerformance_ObjectNumber_must_be_greater_than_zero check(ObjectNumber > 0),
    RentAmount decimal(7,2) not null constraint ck_TeamPerformance_RentAmount_must_be_greater_than_zero check(RentAmount > 0),
    MonthsRented int not null constraint ck_TeamPerformance_MonthsRented_must_be_between_1_and_12 check(MonthsRented between 1 and 12),
    AnnualMaintenanceCost decimal(7,2) not null,
    AnnualLitigationExpense decimal(7,2) not null,
    WaitingTime time null constraint ck_TeamPerformance_WaitingTime_must_be_max_3_minutes check(WaitingTime <= '00:03:00'),
    Points as case
                when WaitingTime is null then 1
                else 0 + FLOOR((90 - (datepart(minute, WaitingTime) * 60 + datepart(second, WaitingTime))) / 20)
              end persisted,
    Rating int not null constraint d_TeamPerformance_Rating default 1,
                        constraint ck_TeamPerformance_Rating_must_be_between_1_and_5 check(Rating between 1 and 5)     
)
go