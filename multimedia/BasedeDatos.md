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
- user_0 (FK)
- user_1 (FK)
- status

### Reseña
- id (PK)
- fecha
- hora
- cometario
- cantidad_estrellas (CAT)
- id_emisor
- id_receptor


### Catalogos

## 1. Edad

- 10
- 11
- 12
- 13
- 14
- 15
- 16
- 17
- 18
- 19
- 20 
- 21
- 22
- 23
- 24
- 25
- 26
- 27
- 28
- 29
- 30
- 31
- 32
- 33
- 34
- 35
- 36
- 37
- 38
- 39
- 40
- 41
- 42
- 43
- 44
- 45
- 46
- 47
- 48
- 49
- 50
- 51
- 52
- 53
- 54 
- 55
- 56
- 57 
- 58
- 59
- 60
- 70
- 71
- 72
- 73
- 74
- 75
- 76
- 77
- 78
- 79
- 80
- 81
- 82
- 83
- 84
- 85
- 86
- 87
- 88
- 89
- 90
- 91
- 92
- 93
- 94
- 95
- 96
- 97
- 98
- 99
- 100

 ## 2. cant_estrellas
- ⭐
- ⭐⭐
- ⭐⭐⭐
- ⭐⭐⭐⭐
- ⭐⭐⭐⭐⭐
