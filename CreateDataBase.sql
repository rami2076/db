CREATE DATABASE DBNameisTODO;

CREATE USER 'TODOuser'@'localhost' IDENTIFIED BY 'TodoPass1111';

GRANT ALL ON DBNameIsTODO.* TO 'TODOuser'@'localhost';

SHOW GRANTS FOR 'TODOuser'@'localhost';