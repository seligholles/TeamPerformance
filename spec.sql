/*
Hi
Our property management company in Zurich, Switzerland, manages properties throughout Switzerland.
As the CEO, I would like to measure the performance of our teams by measuring the work they have done.
Our teams are responsible for renting out the apartments as well as dealing with any matters concerning the tenants, mainly answering their phone calls.

Maintenance -       I expect them to carry out inexpensive but sustainable repairs and maintenance work.
                    Excessive maintenance expenses indicate work carried out either too expensive or unsustainable and therefore had to be carried out several times, 
                    which ultimately results in increased tenant complaints.

Rental income -     Vacancies in the property and renting to insolvent tenants must be avoided to prevent rent losses.
                    With a correct assessment of the housing market, the rental prices are set attractively, to guarantee quick re-letting in the event of vacancies.
                    By carefully checking prospective tenants, rent losses can be avoided.

Coustomer service - Responding to tenants' calls quickly and efficiently is important for their satisfaction.


Reports
The results are used to compare the teams. That's why it's not the numbers that are important to me as a result, but rather the deviation in percentage.
For example: The loss of rental income due vacancies is 15% (and not 6900) of what could have been earned if rented out.
I need the program to react superfast, please ensure it does not take up unnecessary storage. 

It is an annual statistic.
1)  How much of the rental income, was lost due to maintance costs and litigation expenses? ex. Loss of rental income due to maintance costs and litigation expenses: 16% (of the potential income)
2)  How much did we lose due to the vacancies, compared to potential profit if these were rented out? ex. Loss of rental income due to vacancies: 16% (of the potential income)
3)	The customer service. ex. Customer service based on our guidelines: -20% (below average)

Below is an illustration of what the reports should look like:

Team            Loss of..
----            ---------
Team Zurich:    20%
Team Basel:     -15%
Team Genva:     10%
Team Bern       25%


Questions
Q:  How can you compare different properties with each other? The construction year, construction quality and location strongly influence the results?
A:  Correct. That's why we took from each team 3 equivalent apartments, that have very similar characteristics.

Q:  Are ligitaion expenses always a result from bad management, that you would lower rate a team with higher litigation expenses? 
A:  Actually you are right. If the ligitaion expenses are less than 250 per object, you could ignore it completely.
    Only include it in the rental loss, together with the maintances cost, if the litigation expenses were over 250.

Q:  Which parameter should I use to calculate efficiency of processing incoming calls?
A:  It works with a points system. A phone call should be answered within 1:30min. That will equal 0 Point. For every additional 20 second of waiting time, subtract 1 point.  
    For every 20 second faster than 1:30min., add 1 point. And by the way, after a waiting time of 3 min. the call is beeing transferred to voicemail.
    For every appartement with no phone call registered (meaning, no complaints), add one Point.
    After completion of the work, the tenant receives a request for rating the service (1 for very bad up to 5 for very good). If they dont rate, it automatically rates a 1.
    Add the Points from the Waiting time and the Ratings together. The average will be a total of 5 points. But for the report, I want the results in percentage as mentioned before.


Sample data 
Team, Object Number, rent, month rented out, yearly maintenance cost, yearly ligitaion expense, Waiting time, Rating

Zurich,		1,	2000,	10,	    3100,	0,      '00:02:00',	5
Zurich,		2,	4000,	11,	    5000,	250,    null	,null
Zurich,		3,	2300,	11,	    7000,	2000,   '00:02:53',	3
Basel,		4,	3000,	8,	    2000,	200,    '00:01:00',	4
Basel,		5,	2700,	9,	    4000,	0,      null	,null
Basel,		6,	4100,	12,	    7500,	0,      '00:01:50',	2
Genva,		7,	4200,	12,	    11000,	0,      '00:01:30',	4
Genva,		8,	3500,	6,	    4500,	0,      '00:02:20',	3
Genva,		9,	3900,	9,	    1500,	2900,   null	,null
Bern,	    10,	3600,	10,	    4700,	0,      '00:02:11',	3
Bern,	    11,	3300,	11,	    3200,	600,    '00:01:45',	5
Bern,	    12,	3200,	12,	    5900,	0,        null	,null