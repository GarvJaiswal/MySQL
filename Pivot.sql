CREATE TABLE sample
( Product Varchar(10),
	Region Varchar (5),
	Revenue int)
INSERT INTO sample VALUES('A','EAST',100),('B','WEST',200),('C','NORTH',150),('D','SOUTH',120)
select * from sample
SELECT Product,
       [East] AS East,
       [West] AS West,
       [North] AS North,
       [South] AS South
FROM
(
  SELECT Product, Region, Revenue
  FROM sample
) AS SourceTable
PIVOT
(
  SUM(Revenue)
  FOR Region IN ([East], [West], [North], [South])
) AS PivotTable;
