-- create database which named bank_info
CREATE DATABASE bank_info;

-- use database
USE bank_info;

-- create miltiple table in database
CREATE TABLE deposit(
	actno INT,
	cname VARCHAR(50),
	bname VARCHAR(50),
	amount DECIMAL(8,2),
	adate DATETIME
);

CREATE TABLE branch(
	bname VARCHAR(50),
	city VARCHAR(50)
);

CREATE TABLE customers(
	cname VARCHAR(50),
	city VARCHAR(50)
);

CREATE TABLE borrow(
	loanno INT,
	cname VARCHAR(50),
	bname VARCHAR(50),
	amount DECIMAL(8,2)
);

-- insert value in tables
INSERT INTO deposit VALUES
	(101,'anil','vrce',1000.00,'3-1-95'),
	(102,'sunil','ajni',5000.00,'1-4-96'),
	(103,'mehul','karolbag',3500.00,'11-17-95'),
	(104,'madhuri','chandi',1200.00,'12-17-95'),
	(105,'pramod','m.g.road',3000.00,'3-27-96'),
	(106,'sandip','andheri',2000.00,'3-31-96'),
	(107,'sivani','virar',1000.00,'9-5-95'),
	(108,'kranti','naheru place',5000.00,'7-2-95'),
	(109,'minu','powai',7000.00,'8-10-95');

INSERT INTO branch VALUES
	('vrce','nagpur'),
	('anji','nagpur'),
	('karolbagh','delhi'),
	('chandi','delhi'),
	('dharmamptha','nagpur'),
	('m.g.road','banglore'),
	('andheri','bombay'),
	('virar','bombay'),
	('naheru place','delhi'),
	('powai','bombay');

INSERT INTO customers VALUES
	('anil','calcuta'),
	('sunil','delhi'),
	('mehul','baroda'),
	('mandar','patana'),
	('madhuri','nagpur'),
	('pramod','nagpur'),
	('sandip','surat'),
	('sivani','bombay'),
	('kranti','bombay'),
	('naren','bombay');

INSERT INTO borrow VALUES
	(201,'anil','vrce',1000.00),
	(206,'mehul','anji',5000.00),
	(311,'sunil','dharmpetha',3000.00),
	(321,'madhuri','andheri',2000.00),
	(375,'pramod','virar',8000.00),
	(481,'kranti','naheru place',3000.00);
	(222,'kapil','virar',null);