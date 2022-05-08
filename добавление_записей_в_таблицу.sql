USE beeline;

SET foreign_key_checks = 0;

INSERT INTO users(name) VALUES ('Иванов Иван');
INSERT INTO users(name) VALUES ('Петрова Мария');
INSERT INTO users(name) VALUES ('Грачев Алексей');
INSERT INTO users(name) VALUES ('Сидорова Екатерина');

INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1000','1','2020-12-01 11:05:00', '1');
INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1001','3','2020-12-01 09:10:00', '1');
INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1002','2','2020-12-01 13:12:00', '2');
INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1003','4','2020-12-02 13:02:00', '2');
INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1004','1','2020-12-02 15:36:00', '1');
INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1005','2','2020-12-02 19:55:00', '2');
INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1006','3','2020-12-03 10:40:00', '1');
INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1007','1','2020-12-04 12:15:00', '2');
INSERT INTO TroubleTickets(Tt_number,User_id,Work_time,Tt_status) VALUES ('1008','4','2020-12-05 15:15:00', '1');

INSERT INTO TT_status(ID, Name) VALUES ('1','Открыта');
INSERT INTO TT_status(ID, Name) VALUES ('2','Ожидает');

SELECT * FROM TT_status;