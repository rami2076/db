SET SESSION FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS human;

/* Create Tables */

CREATE TABLE human
(
	id varbinary(10) DEFAULT '1000' NOT NULL,
	user_id varbinary(10) DEFAULT '2000' NOT NULL,
	name varchar(15),
	password varchar(30),
	mailaddress varchar(60),
	PRIMARY KEY (id)
);


CREATE TABLE prioritys
(
	color_flag int(3) NOT NULL AUTO_INCREMENT,
	prooritys varbinary(40),
	PRIMARY KEY (color_flag)
);


CREATE TABLE task
(
	task_id int(10) NOT NULL AUTO_INCREMENT,
	end date,
	dead_line date,
	task_name varchar(30),
	resister_day date,
	delete_flag bit(1),
	done_flag bit(1),
	id varbinary(10) NOT NULL,
	color_flag int(3) NOT NULL,
	PRIMARY KEY (task_id)
);



/* Create Foreign Keys */

ALTER TABLE task
	ADD FOREIGN KEY (id)
	REFERENCES human (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE task
	ADD FOREIGN KEY (color_flag)
	REFERENCES prioritys (color_flag)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



