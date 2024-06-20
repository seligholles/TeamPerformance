use PropertyManagementDB
go
delete TeamPerformance
go

insert TeamPerformance(Team, ObjectNumber, RentAmount, MonthsRented, AnnualMaintenanceCost, AnnualLitigationExpense, WaitingTime, Rating)
select 'Zurich', 1, 2000, 10, 3100,	0, '00:02:00', 5
union select 'Zurich', 2, 4000, 11,	5000, 250, null	, 1
union select 'Zurich', 3, 2300,	11, 7000, 2000, '00:02:53', 3
union select 'Basel', 4, 3000, 8, 2000, 200, '00:01:00', 4
union select 'Basel', 5, 2700, 9, 4000,	0, null, 1
union select 'Basel', 6, 4100, 12, 7500, 0, '00:01:50',	2
union select 'Genva', 7, 4200, 12, 11000, 0, '00:01:30', 4
union select 'Genva', 8, 3500, 6, 4500,	0, '00:02:20', 3
union select 'Genva', 9, 3900, 9, 1500, 2900, null, 1
union select 'Bern', 10, 3600, 10, 4700, 0, '00:02:11',	3
union select 'Bern', 11, 3300, 11, 3200, 600,'00:01:45', 5
union select 'Bern', 12, 3200, 12, 5900, 0, null, 1
