use beeline;

1 задание
SELECT TroubleTickets.tt_number, TroubleTickets.user_id, TroubleTickets.work_time, TroubleTickets.tt_status
FROM TroubleTickets JOIN users JOIN tt_status ON TroubleTickets.tt_status = tt_status.id ON TroubleTickets.user_id = users.id
WHERE DATE(work_time) >= '2020-12-02 12:00:00';

2 задание
SELECT users.name, TroubleTickets.Tt_number, TroubleTickets.Work_time, tt_status.Name
FROM users JOIN TroubleTickets JOIN tt_status ON TroubleTickets.user_id = users.id AND TroubleTickets.tt_status = tt_status.id
WHERE users.name = 'Петрова Мария';

3 задание
SELECT troubletickets.tt_number, users.name, troubletickets.work_time, tt_status.Name
FROM troubletickets JOIN users JOIN tt_status ON troubletickets.tt_status = tt_status.id AND TroubleTickets.user_id = users.id
WHERE tt_status.name = 'Ожидает';

4 задание
SELECT 
	COUNT(troubletickets.tt_number) AS 'Количество', 
	tt_status.name
FROM 
	troubletickets JOIN tt_status ON troubletickets.tt_status = tt_status.id
WHERE 
	DATE(work_time) BETWEEN '2020-12-02' AND '2020-12-04' AND
	tt_status.name = 'Открыта';
    ИЛИ
    tt_status.name = 'Ожидает';

5 задание
SELECT troubletickets.tt_number, users.name, users.id, troubletickets.work_time, tt_status.name, tt_status.id
FROM troubletickets JOIN users JOIN tt_status ON troubletickets.tt_status = tt_status.id AND TroubleTickets.user_id = users.id
WHERE users.name = 'Иванов Иван';