CREATE TABLE SOURCE
(
NAME VARCHAR(10),
QUANTITY INTEGER,
PRICE DECIMAL 
);

CREATE TABLE TARGET
(
NAME VARCHAR(10),
QUANTITY INTEGER,
PRICE DECIMAL 
);

INSERT INTO SOURCE VALUES('A',10,15),('B',15,50),('C',20,25);
INSERT INTO TARGET VALUES('A',10,25),('B',15,60),('C',20,35);

MERGE INTO TARGET USING SOURCE
ON TARGET.QUANTITY=SOURCE.QUANTITY
WHEN MATCHED THEN
	UPDATE SET QUANTITY=16,
				PRICE=20
WHEN NOT MATCHED THEN
	INSERT (QUANTITY,PRICE) VALUES(1,2);

SELECT *
FROM TARGET;

SELECT * 
FROM
SOURCE;