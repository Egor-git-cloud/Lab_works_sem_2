DROP TABLE IF EXISTS 'shop';
DROP TABLE IF EXISTS 'product';
DROP TABLE IF EXISTS 'warehouse';
DROP TABLE IF EXISTS 'worker';
CREATE TABLE shop (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance FLOAT NOT NULL);
INSERT INTO 'shop' VALUES(1,'пятерочка',31);
INSERT INTO 'shop' VALUES(2,'перекресток',133);
CREATE TABLE product (
id INTEGER PRIMARY KEY,
name VARCHAR(255) UNIQUE,
price FLOAT NOT NULL);
INSERT INTO 'product' VALUES(1,'молоко',100);
INSERT INTO 'product' VALUES(2,'хлеб',25);
INSERT INTO 'product' VALUES(3,'яйца',120);
INSERT INTO 'product' VALUES(4,'овсянка',80);
INSERT INTO 'product' VALUES(5,'гречка',40);
INSERT INTO 'product' VALUES(6,'творог',97);
INSERT INTO 'product' VALUES(7,'фисташки',240);
INSERT INTO 'product' VALUES(8,'''другой творог''',97);
CREATE TABLE warehouse (
shop_id INTEGER REFERENCES shop (id),
product_id INTEGER REFERENCES product (id),
quantity INTEGER NOT NULL,
PRIMARY KEY (shop_id, product_id));
INSERT INTO 'warehouse' VALUES(1,1,20);
INSERT INTO 'warehouse' VALUES(1,2,10);
INSERT INTO 'warehouse' VALUES(2,1,30);
CREATE TABLE worker (
worker_id INTEGER PRIMARY KEY,
shop_id INTEGER REFERENCES product (id),
name VARCHAR(255),
salary INTEGER NOT NULL,
position VARCHAR(255));
INSERT INTO 'worker' VALUES(0,1,'Серж',16000,'кассир');
INSERT INTO 'worker' VALUES(1,1,'Иван',20000,'логист');
INSERT INTO 'worker' VALUES(2,2,'Андрей',34000,'супервайзер');
INSERT INTO 'worker' VALUES(3,1,'Максим',99000,'владелец');
INSERT INTO 'worker' VALUES(4,2,'Михаил',16000,'кассир');
INSERT INTO 'worker' VALUES(5,1,'Петр',16000,'кассир');
