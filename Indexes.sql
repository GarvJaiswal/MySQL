CREATE TABLE employee
(
	id int,
	name varchar(20),
	num int);
Insert into employee Values(4,'Abc',44),(5,'Avd',78),(1,'BNd',123),(9,'NMB',75);
select * from employee;

CREATE CLUSTERED INDEX num_index
ON employee (num DESC);

CREATE NONCLUSTERED INDEX id_index
ON employee(id ASC);


CREATE UNIQUE CLUSTERED INDEX uniq_id_index
ON employee (id ASC,num DESC);

CREATE UNIQUE NONCLUSTERED INDEX nonclus_index
ON employee (id DESC,name ASC);