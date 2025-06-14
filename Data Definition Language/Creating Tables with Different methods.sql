/*Creating table using Method 1*/
CREATE TABLE Table_1(
Column_1 INT,
Column_2 CHAR(10),
column_3 VARCHAR(10));

/*Creating a Table using Method 2*/
CREATE TABLE Table_2(
Column_1 INT NOT NULL,
Column_2 CHAR(20) PRIMARY KEY,
Column_3 INT UNIQUE KEY);

/*Creating table using Method 3*/
CREATE TABLE Table_3(
  Column_1 INT CONSTRAINT Col1_NN CHECK(Column_1 < 100),
  Column_2 VARCHAR(20) CONSTRAINT Col2_CK CHECK(Column_2 < 50),
  Column_3 INT CONSTRAINT Col3_UK CHECK(Column_3 < 30));

/*Creating table using Method 4*/
CREATE TABLE Table_4 AS SELECT * FROM Table_3