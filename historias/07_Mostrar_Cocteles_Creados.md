# Historia de Usuario: Mostrar Recetas Creadas de Cócteles

Yo como: Usuario de la aplicación
Quiero: Poder ver las recetas de cócteles que fueron creadas por mí.
Para: Verlas a futuro y compartirlas con el público en general.

## Pendientes de definición:

- ¿Cómo se clasifican o etiquetan estas recetas (por ejemplo, por ingredientes, por categoría de cóctel, por nivel de dificultad, etc.)?

## Especificación de requerimientos:
- La aplicación debe permitir a los usuarios crear y guardar recetas de cócteles.
- Deben existir opciones de búsqueda y filtrado para que los usuarios puedan encontrar recetas específicas.
- Los usuarios deben poder ver información detallada de cada receta, incluyendo ingredientes, instrucciones de preparación y, posiblemente, imágenes.


## Análisis: 

### Pantalla de Mostrar Recetas Creadas de Cócteles
La pantalla de mostrar recetas creadas de cócteles debe permitir a los usuarios realizar las siguientes acciones:

- Buscar recetas de cócteles creadas.
- Ver información detallada de cada receta, incluyendo ingredientes y pasos de preparación.


## Criterios de aceptación (Gherkin): 

### Visualización de Recetas
Dado: Que el usuario ha iniciado sesión en la aplicación.
Cuando: El usuario accede a la sección de recetas de cócteles.
Entonces: El sistema debe mostrar una lista de recetas de cócteles creadas por el propio usuario, y permitir al usuario seleccionar y ver información detallada de una receta específica.

## Diseño: 
### Pantalla de Mostrar Recetas Creadas de Cócteles
La pantalla de mostrar recetas de cócteles deberá incluir las siguientes secciones:

- Lista de recetas de cócteles creadas.
- Opciones de búsqueda y filtrado para encontrar recetas específicas.
- Página de detalle de la receta, que mostrará información detallada, como ingredientes, preparación y posiblemente imágenes.

Request:
```
GET BASE_URL/api/v1/cocktailRecipes
Content-Type: application/json
Authorization: Bearer JWT
```

Reponse:
```
[
{
"nombre": "Nombre de la Receta",
"categoria": "Categoría del Cóctel",
"ingredientes": [
{
"nombre": "Ingrediente 1",
"cantidad": "1 oz"
},
{
"nombre": "Ingrediente 2",
"cantidad": "0.5 oz"
}
],
"preparacion": "Pasos para preparar el cóctel...",
"imagen": "URL de la imagen (opcional)",
"publica": true,
"notas": "Notas adicionales o consejos"
},
//mas recetas
]
```
Response: Exitoso statusCode: 200
```
{

}
```
Response: No encontrado statusCode: 404
