CREATE TABLE client(
             client_id int PRIMARY KEY  ,
             name varchar2(256),
             surname varchar2(256),
             service_name varchar2(256),
             phone_number varchar2(256),
             email varchar2(256),
             car_id int
);
COMMIT;

INSERT INTO client(
             client_id,
             name,
             surname,
             service_name,
             phone_number,
             email,
             car_id
)
VALUES(
1,'Никита','Суслов','Покраска','+79154747411','prikolist@bk.ru',1
);
INSERT INTO client(
             client_id,
             name,
             surname,
             service_name,
             phone_number,
             email,
             car_id
)
VALUES(
2,'Влад','Раков','Балансировка','+79023837411','mainkrafter@bk.ru',2
);
INSERT INTO client(
             client_id,
             name,
             surname,
             service_name,
             phone_number,
             email,
             car_id
)
VALUES(
3,'Андрей','Пулковский','Замена шатунов','+79993835001','main_fors@mail.ru',3
);


CREATE TABLE employee(
             employee_id int PRIMARY KEY ,
             name varchar2(256),
             surname varchar2(256),
             specialization varchar2(256),
             phone_number varchar2(256),
             email varchar2(256),
             status_id int
);
COMMIT;
INSERT INTO employee (
             employee_id,
             name,
             surname,
             specialization,
             phone_number,
             email,
             status_id
)
VALUES(
1,'Матвей','Сушовский','Детейлер','+79993745601','grumeri_top@bk.ru',1
);
INSERT INTO employee (
             employee_id,
             name,
             surname,
             specialization,
             phone_number,
             email,
             status_id
)
VALUES(
2,'Григорий','Котков','Тюнер','+79974380018','rok_metal@mail.ru',2
);

INSERT INTO employee (
             employee_id,
             name,
             surname,
             specialization,
             phone_number,
             email,
             status_id
)
VALUES(
3,'Владимир','Сладов','Кузовщик','+79977480316','fuggas_13@gmail.com',2
);

CREATE TABLE car(
             car_id int PRIMARY KEY ,
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
CREATE TABLE services(
             service_id int PRIMARY KEY ,
             service_name varchar2(256)
);
COMMIT;
INSERT INTO services(
            service_id,
            service_name
)
VALUES(
1,'Покраска'
);

INSERT INTO services(
            service_id,
            service_name
)
VALUES(
2,'Диагностика'
);

INSERT INTO services(
            service_id,
            service_name
)
VALUES(
3,'Замена шатунов'
);

INSERT INTO services(
            service_id,
            service_name
)
VALUES(
4,'Замена сальников и саленблоков передней и задней оси'
);
INSERT INTO services(
            service_id,
            service_name
)
VALUES(
5,'Балансировка'
);
CREATE TABLE status(
             status_id int PRIMARY KEY ,
             status varchar2(256)
);
INSERT INTO status(
            status_id,
            status      
)
VALUES(
1,'Занят'
);
INSERT INTO status(
            status_id,
            status      
)
VALUES(
2,'Свободен'
);
CREATE TABLE orders(
             client_id int ,
             service_id int,
             employee_id int,
             car_id int,
             FOREIGN KEY (client_id) REFERENCES client(client_id),
             FOREIGN KEY (service_id) REFERENCES service(service_id),
             FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
             FOREIGN KEY (car_id) REFERENCES car(car_id)
);
INSERT INTO orders(
             client_id,
             service_id,
             employee_id,
             car_id
              
)
VALUES(
2,1,1,2
);
INSERT INTO orders(
             client_id,
             service_id,
             employee_id,
             car_id
                
)
VALUES(
3,1,1,2
);
INSERT INTO orders(
             client_id,
             service_id,
             employee_id,
             car_id
             
)
VALUES(
1,1,1,2
);COMMIT ;
SELECT services.service_id,client.service_name
FROM client
JOIN services ON services.service_name = client.service_name;

SELECT client.client_id,client.name,client.surname,client.service_name,client.phone_number,client.email,car.car_id,
st_number,year_of_release,color,service_id,services.service_name
FROM client
JOIN orders ON orders.client_id = client.client_id
JOIN orders ON orders.service_id = services.service_id
JOIN orders ON orders.car_id = car.car_id


;


;
SELECT * FROM orders;
SELECT * FROM status;
SELECT * FROM services;
SELECT * FROM client;
SELECT * FROM employee;
SELECT * FROM car;
DROP TABLE client;