# TABLA DE USUARIOS
![Alt text](Img1.png)

# Crear usuarios 
## QUERY BDD:
INSERT INTO "User" (username,  password,  email)
VALUES ('new_user', 'secret','new_user@example.com');

## API:
```
POST BASE_URL api/v1/login/createuser
Accept: Application/json
Authorization: Bearer JWT
```

## MOCKUP: 
![Alt text](historias/Img1.png)

# Obtener usuarios
## QUERY BDD:
SELECT id, username, password, email
FROM "User"

## API POST:
```
POST BASE_URL api/v1/login/
Accept: Application/json
Authorization: Bearer JWT
```
## MOCKUP
![Alt text](historias/Img1.png)

