## Modelo Entidad-Relacion
---

### -Entidades
1. Usuario.
2. Servicio.
3. Reseña. 

### -Relaciones
- Usuario pide Servicio 1-M.
- Usuario acepta Servicio 1-M.
- Usuario hace Reseña 1-M. 
- Usuario recibe Reseña 1-M.
- Usuario escribe Comentario 1-M.
- Usuario recibe Comentario 1-M.


### -Atributos

#### Usuario
- user_id (PK)
- tipo_user
- user_data
- user_name
- email (UQ)
- phone(UQ)
- pasword
- age (CAT)
- ubicacion 

### Servicio 
- id_servicio (PK)
- data_servicio
- tipo_servicio
- user (FK)
- user_worker (FK)
- status

### Reseña
- id (PK)
- fecha
- hora
- comentario
- cantidad_estrellas (CAT)
- id_emisor
- id_receptor


### Catalogos


 ## 2. cant_estrellas

- ⭐
- ⭐⭐
- ⭐⭐⭐
- ⭐⭐⭐⭐
- ⭐⭐⭐⭐⭐



### Modelo Relacional

![Modelo_Relacional](multimedia/ModeloRe.png)

### Reglas de negocio


#### User

- User crea cuenta
- User valida user
- User actualiza datos
- User actualiza password
- User elimina cuenta

#### Cuantity Stars

- User crea Cuantity_Stars
- User elimina Cuantity_Stars
#### On status

- User crea status
- User actualiza status

#### User Type

- User crea tipo de usuario

#### Services

- User pide servicio

#### Comentary

- User crea comentario
- User actualiza comentario
- User borra comentario

#### Review

- User crea Review
- User borra Review

