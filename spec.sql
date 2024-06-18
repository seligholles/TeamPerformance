/*
Hi
Our property management company in Zurich, Switzerland, manages properties throughout Switzerland.
As the CEO, I would like to measure the performance of our teams.

Maintenance -         I expect them to carry out inexpensive but sustainable repairs and maintenance work.
Rental income -       Vacancies in the property must be avoided in order to prevent rent losses.
Coustomer service -   With regular training and support they should be able to complete their tasks efficiently and on schedule. 
                      Incoming calls should be answered on time and to satisfaction of the tenants.


Reports
Since the results serve as a benchmark to compare the competence of the teams, I need the results only in percentages. No need for amount of money or number of points.
I need the program to react superfast, please ensure it does not take up unnecessary storage. 

It is an annual statistic.
1)  How much of the rental income, was lost due to maintance costs and litigation expenses? (ex. 16%)
2)  How much did we lose due to the vacancies, compared to potential profit if these were rented out? (ex. 20% of the potential rental income)
3)	The efficiency of processing incoming calls (ex. 15% below average)


Questions
Q:  How can you compare different properties with each other? The construction year, construction quality and location strongly influence the results?
A:  Correct. That's why we took from each team 3 equivalent apartments, that have very similar characteristics.

Q:  Are ligitaion expenses always a result from bad management, that you would lower rate a team with higher ligitaion expenses? 
A:  Actually you are right. If the ligitaion expenses are less than 250 per object, you could ignore it completely.
    Only include it in the rental loss, together with the maintances cost, if the expenses were over 250.

Q:  Which parameter should I use to calculate efficiency of processing incoming calls?
A:  It works with a points system. A phone call should be answered within 1:30min. That will equal 0 Point. For every additional 20 second of waiting time, subtract 1 point.  
    For every 20 second faster than 1:30min., add 1 point. And by the way, after a waiting time of 3 min. the call is beeing transferred to voicemail.
    For every appartement with no phone call registered (meaning, no complaints), add one Point.
    After completion of the work, the tenant receives a request for rating the service (1 for very bad up to 5 for very good). If they dont rate, it automatically rates a 1.
    Add the Points from the Waiting time and the Ratings together. The average will be a total of 5 points. But for the report, I want the results in percentage as mentioned before.


Sample data 
Team, Property value, Object Number, Monthly rent income, month rented out, yearly maintenance cost, Waiting time, Rating

'Zurich',	5000000,	1,	2000,	10,	    3100,	'00:02:00',	5
'Zurich',	5000000,	2,	4000,	11,	    5000,	 null	,null
'Zurich',	5000000,	3,	2300,	11,	    7000,	'00:03:12',	3
'Basel',	4700000,	4,	3000,	8,	    2000,	'00:01:00',	4
'Basel',	4700000,	5,	2700,	9,	    4000,	 null	,null
'Basel',	4700000,	6,	4100,	12,	    7500,	'00:01:50',	2
'Genva',	5150000,	7,	4200,	12,	    11000, '00:01:30',	4
'Genva',	5150000,	8,	3500,	6,	    4500,	'00:02:20',	3
'Genva',	5150000,	9,	3900,	9,	    1500,	 null	,null
'Bern',	  4800500,	10,	3600,	10,	    4700,	'00:02:11',	3
'Bern',	  4800500,	11,	3300,	11,	    3200,	'00:01:45',	5
'Bern',	  4800500,	12,	3200,	12,	    5900,	 null	,null
