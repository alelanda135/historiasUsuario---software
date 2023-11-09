# TABLA DE USUARIOS
![Alt text](Img1BDD.png)

# Crear usuarios 
## QUERY BDD:
INSERT INTO "User" (username,  password,  email, Type_user_id)
VALUES ('new_user', 'secret','new_user@example.com', 2);

## API:
```
POST BASE_URL api/v1/login/createuser
Accept: Application/json
Authorization: Bearer JWT
```

## MOCKUP: 
![Alt text](Img1.png)

# Iniciar sesion
## QUERY BDD:
SELECT id, username, password, email, Type_user_id
FROM "User"

## API POST:
```
POST BASE_URL api/v1/login/
Accept: Application/json
Authorization: Bearer JWT
```
## MOCKUP
![Alt text](Img2.png)

