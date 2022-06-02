/* Reglas de Negocio - Sentencias CRUD */

/* 1. Crear _cuantity_stars_. */
INSERT INTO cuantity_stars (star) VALUES ("1"), ("2"), ("3");


/* 1. Eliminar _cuantity_stars_. */
DELETE FROM cuantity_stars WHERE cuantity_id = 1;


/* 1. Crear _users1_. */
INSERT INTO users1 (users1, user_date, user_name, email, password, phone, age, ubicacion_latitud, ubicacion_longitud, avatar, user_type ) VALUES 
  ('@elpedro', NOW(),"PedroUwu", 'elPedro@gmail.com', SHA1('pedro1234'),'5487986532',"20", "560.56", "876.543", "https://pedro.com/img/pedro.jpg", "Driver" );

/* 1. Leer todos los _users1_. */
SELECT * FROM users1;
SELECT user, email  FROM users1;
/* 1. Leer un _users1_. */ 
SELECT * FROM users1 WHERE email = 'elPedro@gmail.com';
SELECT user, email  FROM users WHERE user = '@elpedro';

/* 1. Validar un _users1_. */
SELECT * FROM users
  WHERE (user = '@elpedro' OR email = 'elPedro@gmail.com' OR phone = '5487986532') AND password = SHA1('pedro1234');


/* 1. Actualizar datos del _users1_. */
UPDATE users1
  SET
    user_name = 'Pedro el estimado',
    avatar = "https://pedro.com/img/pedro.jpg", 
    age = "22",
    phone = '5487989532'
  WHERE user = "@elpedro";

/* 1. Actualizar _password_ de _users1_. */
UPDATE users1
  SET password = SHA1("nuevo password")
  WHERE user = "@elpedro";

/* 1. Eliminar _user_. */
DELETE FROM users1
  WHERE user = '@elpedro';

INSERT INTO users1 (users1, user_date, user_name, email, password, phone, age, ubicacion_latitud, ubicacion_longitud, avatar, user_type)
  VALUES
    ( '@testi', NOW(), "testi", 'testi@gmail.com', SHA1('testi'), "5512345679", "30", "https://testi.com/img/testi.jpg", "15243" ),
    ( '@testii', NOW(), "testii", 'testii@gmail.com', SHA1('testii'), "5512345670", "40", "https://testii.com/img/testii.jpg", "15244" ),
    ( '@testiiii', NOW(), "testiiiii", 'testiiiiii@gmail.com', SHA1('testityi'), "5512345550", "23", "https://testii.com/img/testiidf.jpg", "15244" ),
    ( '@testiiiii', NOW(), "testiiiiii", 'testiity@gmail.com', SHA1('testityi'), "5557012346", "60", "https://testii.com/img/testidfi.jpg", "15244" ),
    ( '@testiii', NOW(), "testiii", 'testiii@gmail.com', SHA1('testiii'), "5512345677", "35", "https://testiii.com/img/testiii.jpg", "15245" );

/* On status */

/* Crear  on_status de un user1 */
INSERT INTO  on_status ( status_id, status_name)
  VALUES
    ("1", 'Ondrive' ),
    ("2", 'Onwait' ),
    ("3",'Onway' );
    

/* Actualiza on_status de un user1 */
UPDATE on_status
  SET
    status_name = "Onwait"
  WHERE user = "@elpedro";




/* User Type */


/* Crear Tipo de usuario */
INSERT INTO user_type ( user_type_id, worker_id, client_id )
  VALUES
    ("1", '1', '5' ),
    ("2", '2', '4' ),
    ("3", '3', '3' ),
    ("4", '4', '2' ),
    ("5", '5', '1' );


/* Service */

/* Crear un Services */
INSERT INTO services ( service_id, date_service, users1, users2, status_id )
  VALUES
    ( 1, NOW(), 'testi', 'testii', "Ondrive" ),
    ( 2, NOW(), 'testii', 'testi','Onway' ),
    ( 3, NOW(), 'testiii', 'testii','Onway' ),
    ( 4, NOW(), 'testiiii', 'testi','Ondrive' ),
    ( 5, NOW(), 'testi', 'testiii','Ondrive' );
   
/* Commentary */

/* Crear un Commentary */
INSERT INTO comentary ( comentary_id, comentary_date, users1, comentary_text  )
  VALUES
    ( 1, NOW(), 'testi', 'blabla'),
    ( 2, NOW(), 'testii', 'nn'),
    ( 3, NOW(), 'testiii', 'holahola'),
    ( 4, NOW(), 'testiiii', 'blabla' ),
    ( 5, NOW(), 'testi', 'x y z');
   

/* Leer un comment de un post */
SELECT * FROM comentary
  WHERE comentary_id = 1;


/* Eliminar comment en un post */
DELETE FROM comentary
  WHERE comentary_id = 3;
  

/* Review */

/* Crear Review*/
INSERT INTO review ( heart_date, post_id, user )
  VALUES
    ( NOW(), 1, '@jonmircha' ),
    ( NOW(), 1, '@test1' ),
    ( NOW(), 1, '@test2' ),
    ( NOW(), 1, '@test3' ),
    ( NOW(), 2, '@jonmircha' ),
    ( NOW(), 2, '@test1' ),
    ( NOW(), 4, '@test2' ),
    ( NOW(), 4, '@test3' );

/*Ver Review */
SELECT COUNT(*) as likes FROM hearts
  WHERE post_id = 1;

/* Eliminar Review */
DELETE FROM review
  WHERE heart_id = 5
    AND user = '@jonmircha';