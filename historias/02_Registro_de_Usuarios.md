# Historia de Usuario: Registro de los Usuarios
Yo como: Usuario nuevo de la aplicación
Quiero: Poder registrarme en la aplicación 
Para: Crear una cuenta personal.
## Pendientes de definición:
- ¿Qué información se requerirá para el registro (nombre, correo electrónico, contraseña, etc.)?
- ¿Se permitirá el registro a través de redes sociales (por ejemplo, inicio de sesión con Google o Facebook)?
- ¿Habrá medidas de seguridad en el proceso de registro?
## Especificación de requerimientos:
- La aplicación debe proporcionar una pantalla de registro donde los usuarios nuevos puedan ingresar información para crear una cuenta.
- Si se permite el registro a través de redes sociales, se debe incluir esa opción.
- Deben existir medidas de seguridad, como validación de contraseña fuerte.
## Análisis: 
### Pantalla de Registro de Usuarios
La pantalla de registro debe permitir al usuario realizar las siguientes acciones:
- Ingresar la información requerida para crear una cuenta (nombre, correo electrónico, contraseña, etc.).
- Opcionalmente, activar la opción de registro a través de redes sociales si está disponible.

## Criterios de aceptación (Gherkin): 
### Registro de Usuarios
Dado: Que el usuario ha abierto la aplicación.
Cuando: El usuario ingresa la información de registro y hace clic en el botón "Registrarse".
Entonces: El sistema debe validar la información y crear la cuenta si es correcta.
## Diseño: 
### Pantalla de Registro de Usuarios
La pantalla de registro debe incluir campos para ingresar la información requerida y un botón "Registrarse". Si se permite el registro a través de redes sociales, debe haber una opción correspondiente para esa función.

Request:
```
POST BASE_URL api/v1/login/createuser
Accept: Application/json
Authorization: Bearer JWT
```
Request:
```
{

}
```
Response: Exitoso statusCode: 200
```
{
 message: “Solicitud realizada de manera exitosa”
}
```
Response: No encontrado statusCode: 404
