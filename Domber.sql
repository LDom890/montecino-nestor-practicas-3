/* SQL-> Structured Query Language*/

CREATE DATABASE if not EXISTS uberdatabase;

use uberdatabase;



create table users1(
    users1  INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_date DATETIME NOT NULL,
    user_name VARCHAR(255),
    email VARCHAR(50)UNIQUE NOT NULL,
    password VARCHAR(255)NOT NULL,
    phone VARCHAR(20)UNIQUE NOT NULL, 
    age DATE,
    ubicacion_latitud FLOAT NOT NULL,
    ubicacion_longitud FLOAT NOT NULL,
    avatar VARCHAR(255),
    user_type INTEGER UNSIGNED,

    FOREIGN KEY(user_type)
    REFERENCES user_type(user_type_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE


) Engine=innoDB DEFAULT charset=utf8mb4;

create table on_status(
status_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
status_name VARCHAR(50)
) Engine=innoDB DEFAULT charset=utf8mb4;

create table user_type(
user_type_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,    
worker_id INTEGER UNSIGNED,
client_id INTEGER UNSIGNED 
) Engine=innoDB DEFAULT charset=utf8mb4;

create table services(
service_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
hour_date DATETIME NOT NULL,
date_service DATETIME NOT NULL,
users1 INTEGER UNSIGNED,
users2 INTEGER UNSIGNED,
status_id INTEGER UNSIGNED,

FOREIGN KEY(users1)
    REFERENCES users1(users1)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(users2)
    REFERENCES users1(users1)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(status_id)
    REFERENCES status_id(status_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) Engine=innoDB DEFAULT charset=utf8mb4;




create table comentary(
comentary_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
comentary_date DATETIME NOT NULL,
comentary_text TEXT NOT NULL,
users1 VARCHAR(50)NOT NULL,
FOREIGN KEY(users1)
    REFERENCES user(users1)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

) Engine=innoDB DEFAULT charset=utf8mb4;




create table review(
review_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
review_date DATETIME NOT NULL,
hour_date DATETIME NOT NULL,
comentary_id VARCHAR(255),
users1 VARCHAR(255),
service_id VARCHAR(255),
FOREIGN KEY(comentary_id)
    REFERENCES comentary(comentary_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(users1)
    REFERENCES user(users1)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(users1)
    REFERENCES userr(users1)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(service_id)
    REFERENCES userr(service_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE            
) Engine=innoDB DEFAULT charset=utf8mb4;







