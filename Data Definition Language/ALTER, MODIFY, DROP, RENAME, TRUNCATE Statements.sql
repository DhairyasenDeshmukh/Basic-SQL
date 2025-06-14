/*Creating a Table of Student Data for further Operations*/
CREATE TABLE STD_DATA(
std_name CHAR(20),
std_roll INT,
std_marks INT,
std_div CHAR);

/*ALTER STATEMENTS*/
/*Adding column into the table*/
ALTER TABLE std_data ADD COLUMN std_grade VARCHAR(20);

/*Adding constraint to column*/
ALTER TABLE std_data ADD CONSTRAINT std_grade_NN CHECK(std_grade IS NOT NULL);
ALTER TABLE std_data ADD CONSTRAINT std_marks_CK CHECK(std_marks<101);

/*Renaming column*/
ALTER TABLE std_data RENAME COLUMN std_roll TO std_rollnumber;

/*Modify length of column*/
ALTER TABLE std_data MODIFY std_name CHAR(30);

/*Modify to NOT NULL Constraint*/
ALTER TABLE std_data MODIFY std_div NOT NULL;

/*Drop Constraints from column*/
ALTER TABLE std_data DROP CONSTRAINT std_marks_CK;

/*Enabling or Disabling Constraint*/
ALTER TABLE std_data DISABLE CONSTRAINT std_grade_NN;


