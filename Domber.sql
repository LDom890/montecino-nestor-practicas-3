/* SQL-> Structured Query Language*/

CREATE DATABASE if not EXISTS uberdatabase;

use uberdatabase;


create table user_type(
user_type_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,    
worker_id INTEGER UNSIGNED AUTO_INCREMENT,
client_id INTEGER UNSIGNED AUTO_INCREMENT,
) Engine=innoDB DEFAULT charset=utf8mb4;





create table services(
service_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
hour_date DATETIME NOT NULL,
date_service DATETIME NOT NULL,
FOREIGN KEY(users)
    REFERENCES userr(users)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(users)
    REFERENCES user_worker(users)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(on_status)
    REFERENCES onstatus(on_status)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) Engine=innoDB DEFAULT charset=utf8mb4;



create table on_status(
status_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
status_name VARCHAR(50)
) Engine=innoDB DEFAULT charset=utf8mb4;



create table comentary(
comentary_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
comentary_date DATETIME NOT NULL,
comentary_text TEXT NOT NULL,
users VARCHAR(50)NOT NULL,
FOREIGN KEY(users)
    REFERENCES user(users)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

) Engine=innoDB DEFAULT charset=utf8mb4;




create table review(
review_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
review_date DATETIME NOT NULL,
hour_date DATETIME NOT NULL,
FOREIGN KEY(comentary_id)
    REFERENCES comentary(comentary_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(users)
    REFERENCES user(users)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(users)
    REFERENCES userr(users)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(service_id)
    REFERENCES userr(service_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,            
) Engine=innoDB DEFAULT charset=utf8mb4;


create table users(
    user VARCHAR(50)PRIMARY KEY,
    user_date DATETIME NOT NULL,
    user_name VARCHAR(255),
    email VARCHAR(50)UNIQUE NOT NULL,
    password VARCHAR(255)NOT NULL,
    phone VARCHAR(20)UNIQUE NOT NULL, 
    age DATE,
    /*pendiente agregar ubicacion*/
    avatar VARCHAR(255)


) Engine=innoDB DEFAULT charset=utf8mb4;




