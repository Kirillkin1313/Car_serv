CREATE TABLE client(
             id int NOT NULL ,
             name varchar2(256),
             surname varchar2(256),
             service varchar2(256),
             phone_number varchar2(256),
             email varchar2(256),
             car_id int
);

COMMIT;

INSERT INTO client(
             id,
             name,
             surname,
             service,
             phone_number,
             email,
             car_id
)
VALUES(
1,'Никита','Суслов','Покраска','+79154747411','prikolist@bk.ru','1'
);
INSERT INTO client(
             id,
             name,
             surname,
             service,
             phone_number,
             email,
             car_id
)
VALUES(
2,'Влад','Раков','Балансировка','+79023837411','mainkrafter@bk.ru','2'
);
INSERT INTO client(
             id,
             name,
             surname,
             service,
             phone_number,
             email,
             car_id
)
VALUES(
3,'Андрей','Пулковский','Замена шатунов','+79993835001','main_fors@mail.ru','3'
);
COMMIT;

CREATE TABLE employee(
             id int NOT NULL,
             name varchar2(256),
             surname varchar2(256),
             specialization varchar2(256),
             phone_number varchar2(256),
             email varchar2(256),
             status_id int
)

INSERT INTO employee (
             id,
             name,
             surname,
             specialization,
             phone_number,
             email,
             status_id
)
VALUES(
1,'Матвей','Сушовский','Детейлер','+79993745601','grumeri_top@bk.ru','1'
);
INSERT INTO employee (
             id,
             name,
             surname,
             specialization,
             phone_number,
             email,
             status_id
)
VALUES(
2,'Григорий','Котков','Тюнер','+79974380018','rok_metal@mail.ru','2'
);

INSERT INTO employee (
             id,
             name,
             surname,
             specialization,
             phone_number,
             email,
             status_id
)
VALUES(
3,'Владимир','Сладов','Кузовщик','+79977480316','fuggas_13@gmail.com','3'
);

CREATE TABLE car(
             car_id int NOT NULL,
             st_number varchar2(256),
             year_of_release DATE ,
             color varchar2(256)
);
COMMIT;
INSERT INTO car (
             car_id,
             st_number,
             year_of_release,
             color
)
VALUES(
1,'y880xc','12.10.2008','blue'
);
INSERT INTO car (
             car_id,
             st_number,
             year_of_release,
             color
)
VALUES(
2,'y856tc','10.07.2015','green'
);
INSERT INTO car (
             car_id,
             st_number,
             year_of_release,
             color
)
VALUES(
3,'d130mc','23.12.2010','orange'
);
);
COMMIT;
SELECT *FROM client;
SELECT * FROM employee;
SELECT * FROM car;
DROP TABLE car;















































