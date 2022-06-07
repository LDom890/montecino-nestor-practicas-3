/* Reglas de Negocio - Sentencias CRUD */

/* 1. Crear _cuantity_stars_. */
INSERT INTO cuantity_stars (star) VALUES ("1"), ("2"), ("3");


/* 1. Eliminar _cuantity_stars_. */
DELETE FROM cuantity_stars WHERE cuantity_id = 1;


/* 1. Crear _users1_. */
INSERT INTO users1 (user_date, user_name, email, password, phone, age, avatar) VALUES 
  (NOW(),"PedroUwu", 'elPedro@gmail.com', SHA1('pedro1234'),'5487986532',"20", "https://pedro.com/img/pedro.jpg");

/* 1. Leer todos los _users1_. */
SELECT * FROM users1;
SELECT users_id, email  FROM users1;
/* 1. Leer un _users1_. */ 
SELECT * FROM users1 WHERE email = 'elPedro@gmail.com';
SELECT users_id, email  FROM users1 WHERE users_id = '@elpedro';

/* 1. Validar un _users1_. */
SELECT * FROM users1
  WHERE (users_id = '@elpedro' OR email = 'elPedro@gmail.com' OR phone = '5487986532') AND password = SHA1('pedro1234');


/* 1. Actualizar datos del _users1_. */
UPDATE users1
  SET
    user_name = 'Pedro el estimado',
    avatar = "https://pedro.com/img/pedro.jpg", 
    age = "22",
    phone = '5487989532'
  WHERE users_id = "@elpedro";

/* 1. Actualizar _password_ de _users1_. */
UPDATE users1
  SET password = SHA1("nuevo password")
  WHERE users_id = "@elpedro";

/* 1. Eliminar _user1_. */
DELETE FROM users1
  WHERE users_id = '@elpedro';

/* Crear 5 _user1_. */
INSERT INTO users1 (user_date, user_name, email, password, phone, age, avatar)
VALUES
    (NOW(), "testi", 'testi@gmail.com', SHA1('testi'), "5512345679", "30", "https://testi.com/img/testi.jpg"),
    (NOW(), "testii", 'testii@gmail.com', SHA1('testii'), "5512345670", "40", "https://testii.com/img/testii.jpg" ),
    (NOW(), "testiiiii", 'testiiiiii@gmail.com', SHA1('testityi'), "5512345550", "23", "https://testii.com/img/testiidf.jpg"),
    (NOW(), "testiiiiii", 'testiity@gmail.com', SHA1('testityi'), "5557012346", "60", "https://testii.com/img/testidfi.jpg"),
    (NOW(), "testiii", 'testiii@gmail.com', SHA1('testiii'), "5512345677", "35", "https://testiii.com/img/testiii.jpg");
/* Crear 5 _user0_. */
INSERT INTO users0 (user_date, user_name, email, password, phone, age, avatar)
VALUES
    (NOW(), "testi", 'testni@gmail.com', SHA1('testi'), "5512345679", "30", "https://testi.com/img/testi.jpg"),
    (NOW(), "testii", 'tesntii@gmail.com', SHA1('testii'), "5512345670", "40", "https://testii.com/img/testii.jpg" ),
    (NOW(), "testiiiii", 'testiiiniii@gmail.com', SHA1('testityi'), "5512345550", "23", "https://testii.com/img/testiidf.jpg"),
    (NOW(), "testiiiiii", 'testinity@gmail.com', SHA1('testityi'), "5557012346", "60", "https://testii.com/img/testidfi.jpg"),
    (NOW(), "testiii", 'testniii@gmail.com', SHA1('testiii'), "5512345677", "35", "https://testiii.com/img/testiii.jpg");

/* On status */

/* Crear  on_status de un user1 */
INSERT INTO  on_status (status_name)
  VALUES
    ('Ondrive'),
    ('Onwait'),
    ('Finished');
    

/* Actualiza on_status de un user1 */
UPDATE on_status
  SET
    status_name = "Onwait"
  WHERE users_id = 6;




/* User Type */


/* Crear Tipo de usuario */
INSERT INTO user_type ( worker_id, client_id )
  VALUES
    ('15245', '15244' ),
    ('15245', '15244' ),
    ('15245', '15244' ),
    ('15245', '15244' ),
    ('15245', '15244' );


/* Service */

/* Crear un Services */
INSERT INTO services (date_service)
  VALUES
    (NOW()),
    (NOW()),
    (NOW()),
    (NOW()),
    (NOW());
   
/* Commentary */

/* Crear un Commentary */
INSERT INTO comentary (comentary_date)
  VALUES
    (NOW()),
    (NOW()),
    (NOW()),
    (NOW()),
    (NOW());
   

/* Leer un comment de un post */
SELECT * FROM comentary
  WHERE comentary_id = 1;


/* Eliminar comment en un post */
DELETE FROM comentary
  WHERE comentary_id = 3;
  

/* Review */

/* Crear Review*/
INSERT INTO review( review_date, hour_date)
  VALUES
    ( NOW(), NOW()),
    ( NOW(), NOW()),
    ( NOW(), NOW()),
    ( NOW(), NOW()),
    ( NOW(), NOW()),
    ( NOW(), NOW()),
    ( NOW(), NOW()),
    ( NOW(), NOW());

/*Ver Review */
SELECT * FROM review
  WHERE review_id = 1;

/* Eliminar Review */
DELETE FROM review
  WHERE review_id = 5;