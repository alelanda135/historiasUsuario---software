# Historia de Usuario: Buscar Recetas de Cócteles
Yo como: Usuario de la aplicación
Quiero: Poder buscar recetas de cócteles en la aplicación utilizando criterios específicos.
Para: encontrar recetas de cócteles que se adapten a mis preferencias o ingredientes disponibles.

## Pendientes de definición


## Especificación de requerimientos
La aplicación debe proporcionar una función de búsqueda de recetas de cócteles.
Los criterios de búsqueda pueden incluir ingredientes, tipo de cóctel, sabor, grado alcohólico, entre otros.
Los resultados de búsqueda deben mostrarse de manera clara y ordenada, con información detallada de las recetas.

## Análisis:
### Pantalla de Búsqueda de Recetas de Cócteles
La pantalla de búsqueda de recetas de cócteles debe permitir al usuario realizar las siguientes acciones:
Ingresar criterios de búsqueda nombre del cóctel.
Iniciar la búsqueda y obtener una lista de recetas que coincidan con los criterios.



### Pantalla de Resultados de Búsqueda de Recetas de Cócteles
La pantalla de resultados de búsqueda debe mostrar al usuario una lista de recetas que coincidan con los criterios de búsqueda. Cada resultado debe incluir detalles de la receta, como ingredientes, preparación y otros datos relevantes.

## Criterios de aceptación
Gherkin

## Búsqueda de Recetas de Cócteles
Dado: Que el usuario ha iniciado sesión en la aplicación.
Cuando: El usuario ingresa criterios de búsqueda como nombre del cóctel.
Entonces: La aplicación debe realizar la búsqueda y mostrar una lista de cócteles que coincidan con los criterios.

## Detalle de Receta de Cóctel
Dado: Que el usuario ha realizado una búsqueda y ve una lista de recetas de cócteles.
Cuando: El usuario selecciona una receta específica.
Entonces: La aplicación debe mostrar información detallada de la receta, incluyendo ingredientes y pasos de preparación.


## Diseño:
### Pantalla de Búsqueda de Recetas de Cócteles
Para realizar la búsqueda:

Request:
```
GET BASE_URL www.thecocktaildb.com/api/json/v1/1/search.php?s=?name
Accept: Application/json
Authorization: Bearer JWT
```
Request:
```
{
name: margarita
}
```
Response: Exitoso statusCode: 200
```
{
 message: “Solicitud realizada de manera exitosa”
}
```
Response: No encontrado statusCode: 404

### Pantalla de Resultados de Búsqueda de Recetas de Cócteles
Para ver los detalles de una receta específica:

Request:
```
GET BASE_URL www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita
Accept: Application/json
Authorization: Bearer JWT
```
Response: Exitoso statusCode: 200
```
{
  "drinks": [
    {
      "nombre": "Margarita",
      "descripcion": "Un cóctel clásico y refrescante con sabor a limón.",
      "etiquetas": ["cítrico", "clásico", "veraniego"],
      "ingredientes": [
        "Tequila",
        "Triple sec",
        "Jugo de limón fresco",
        "Azúcar",
        "Hielo"
      ],
      "preparacion": "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.",
      "mezclas": [],
      "extras": []
    },
    {
      "nombre": "Blue Margarita",
      "descripcion": "Un cóctel azul y refrescante con sabor a lima y tequila.",
      "etiquetas": ["cítrico", "azul", "veraniego"],
      "ingredientes": [
        "Tequila",
        "Blue Curacao",
        "Jugo de limón",
        "Sal gruesa"
      ],
      "preparacion": "Rub rim of cocktail glass with lime juice. Dip rim in coarse salt. Shake tequila, blue curacao, and lime juice with ice, strain into the salt-rimmed glass, and serve.",
      "mezclas": [],
      "extras": []
]
 }
```
Response: No encontrado statusCode: 404
