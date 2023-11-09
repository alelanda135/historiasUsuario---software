# TABLA DE USUARIOS
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
Request:
```
{
  "username": "johndoe",
  "password": "secret",
  "email": "johndoe@example.com"
}
```

Response: Exitoso statusCode: 200
```
{
 message: “Solicitud realizada de manera exitosa”
}
```
Response: No encontrado statusCode: 404

## MOCKUP: 


# Obtener usuarios
## QUERY BDD:
SELECT id, username, password, email
FROM "User"

## API POST:
Request:
```
POST BASE_URL api/v1/login/
Accept: Application/json
Authorization: Bearer JWT
```
Request:
```
{
  "username": "johndoe",
  "password": "secret",
  "email": "johndoe@example.com"
}
```
Response: Exitoso statusCode: 200
```
{
 message: “Solicitud realizada de manera exitosa”
}
```
Response: No encontrado statusCode: 404

## MOCKUP


