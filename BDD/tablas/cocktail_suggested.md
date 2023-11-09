# TABLAS COCKTAIL SUGGESTED

# Generar coctel
## QUERY BDD:
INSERT INTO Cocktail_suggested (id, name, category, description, User_id)
VALUES (3, 'Special Blend', 'Cocktails', 'Ingredients: Rum, Lime, Sugar. 
Preparation: Shake and strain...', 2);

## API
POST BASE_URL/api/v1/coctelia
Accept: Application/json
Authorization: Bearer JWT

## MOCKUP

# Obtener coctel sugerido
SELECT * FROM Cocktail_suggested WHERE id = 1;

## API 
POST BASE_URL/api/v1/coctelia/{id}
Accept: Application/json
Authorization: Bearer JWT


# Obtener todos los cocteles generados
SELECT * FROM Cocktail_suggested;

## API 
POST BASE_URL/api/v1/coctelia/
Accept: Application/json
Authorization: Bearer JWT

## MOCKUP