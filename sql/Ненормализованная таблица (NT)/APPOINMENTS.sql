CREATE TABLE client(
             id int NOT NULL ,
             name varchar2(256),
             surname varchar2(256),
             service varchar2(256),
             phone_number varchar2(256),
             email varchar2(256)
);

COMMIT;

INSERT INTO client(
             id,
             name,
             surname,
             service,
             phone_number,
             email
)
VALUES(
1,'Никита','Суслов','Покраска','+79154747411','prikolist@bk.ru'
);
INSERT INTO client(
             id,
             name,
             surname,
             service,
             phone_number,
             email
)
VALUES(
2,'Влад','Раков','Балансировка','+79023837411','mainkrafter@bk.ru'
);
INSERT INTO client(
             id,
             name,
             surname,
             service,
             phone_number,
             email
)
VALUES(
3,'Андрей','Пулковский','Замена шатунов','+79993835001','main_fors@mail.ru'
);
COMMIT;


SELECT * FROM client;


DROP TABLE client;