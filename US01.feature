Feature: Publicación de inmuebles

Scenario: El arrendador crea la publicación satisfactoriamente
    Given que el arrendador se encuentra en el formulario de publicación
    When el arrendador ingresa la información solicitada
    And el arrendador hace clic en el botón de “Publicar”
    Then la aplicación muestra un mensaje de “Publicación creada satisfactoriamente”
    And la publicación es visible para los estudiantes.

    Examples:
    
    | Title                      | Description                                | ImageURL               | Price | Type         | District   | Address           | Message                               |
    |----------------------------|--------------------------------------------|------------------------|-------|--------------|------------|-------------------|---------------------------------------|
    | Departamento en San Miguel | Se alquila departamento para 2 estudiantes | https://www.google.com | 500   | Departamento | San Miguel | Av. La Marina 123 | Publicación creada satisfactoriamente |


Scenario: El arrendador no ingresa todos los datos solicitados
    Given que el arrendador se encuentra en el formulario de publicación
    When el arrendador no ingresa información en todos los campos solicitados
    And el usuario hace clic en el botón de “Publicar”
    Then la aplicación muestra un mensaje de “Por favor, ingrese la información solicitada”

    Examples:

    | Title                      | Description                                | ImageURL               | Price | Type         | District   | Address           | Message                               |
    |----------------------------|--------------------------------------------|------------------------|-------|--------------|------------|-------------------|---------------------------------------|
    | Departamento en San Miguel | Se alquila departamento para 2 estudiantes | https://www.google.com |       | Departamento | San Miguel | Av. La Marina 123 | Publicación creada satisfactoriamente |
