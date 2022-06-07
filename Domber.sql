/* SQL-> Structured Query Language*/

CREATE DATABASE if not EXISTS uberdatabase;

use uberdatabase;

CREATE TABLE cuantity_stars(
  cuantity_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  star VARCHAR(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO cuantity_stars (cuantity_id, star) VALUES
  (1, 'una'),
  (2, 'dos'),
  (3, 'tres'),
  (4, 'cuatro'),
  (5, 'cinco');
  

create table on_status(
status_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
status_name VARCHAR(50) NOT NULL
) Engine=innoDB DEFAULT charset=utf8mb4;



create table user_type(
user_type_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,    
worker_id INTEGER UNSIGNED NOT NULL,
client_id INTEGER UNSIGNED NOT NULL 
) Engine=innoDB DEFAULT charset=utf8mb4;



create table users1(
    users_id  INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_date DATETIME NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    email VARCHAR(50)UNIQUE NOT NULL,
    password VARCHAR(255)NOT NULL,
    phone VARCHAR(20)UNIQUE NOT NULL, 
    age VARCHAR(2)NOT NULL,
    ubicacion_latitud FLOAT,
    ubicacion_longitud FLOAT,
    avatar VARCHAR(255)NOT NULL,
    user_type0 INTEGER UNSIGNED,

    FOREIGN KEY(user_type0)
    REFERENCES user_type(user_type_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE


) Engine=innoDB DEFAULT charset=utf8mb4;

create table users0(
    users_id  INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_date DATETIME NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    email VARCHAR(50)UNIQUE NOT NULL,
    password VARCHAR(255)NOT NULL,
    phone VARCHAR(20)UNIQUE NOT NULL, 
    age VARCHAR(2)NOT NULL,
    ubicacion_latitud FLOAT,
    ubicacion_longitud FLOAT,
    avatar VARCHAR(255)NOT NULL,
    user_type0 INTEGER UNSIGNED,

    FOREIGN KEY(user_type0)
    REFERENCES user_type(user_type_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE


) Engine=innoDB DEFAULT charset=utf8mb4;



create table services(
service_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
date_service DATETIME NOT NULL,
user_id INTEGER UNSIGNED,
other_id INTEGER UNSIGNED,
status_id INTEGER UNSIGNED,

FOREIGN KEY(user_id)
    REFERENCES users1(users_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(other_id)
    REFERENCES users0(users_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(status_id)
    REFERENCES on_status(status_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) Engine=innoDB DEFAULT charset=utf8mb4;




create table comentary(
comentary_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
comentary_date DATETIME NOT NULL,
comentary_text TEXT,
users1 INTEGER UNSIGNED,
FOREIGN KEY(users1)
    REFERENCES users1(users_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

) Engine=innoDB DEFAULT charset=utf8mb4;




create table review(
review_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
review_date DATETIME NOT NULL,
hour_date DATETIME NOT NULL,
comentary_id INTEGER UNSIGNED,
user_id INTEGER UNSIGNED,
other_id INTEGER UNSIGNED,
service_id INTEGER UNSIGNED,
FOREIGN KEY(comentary_id)
    REFERENCES comentary(comentary_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(user_id)
    REFERENCES users1(users_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(other_id)
    REFERENCES users0(users_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
FOREIGN KEY(service_id)
    REFERENCES services(service_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE            
) Engine=innoDB DEFAULT charset=utf8mb4;







