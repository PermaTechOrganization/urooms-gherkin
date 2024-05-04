Feature: Edición de Publicación

Scenario: El arrendador edita su publicación satisfactoriamente
    Given que el arrendador se encuentra en el formulario de edición de una publicación
    When realiza las ediciones necesarias utilizando las herramientas disponibles
    And hace clic en “Publicar”
    Then la aplicación muestra un mensaje indicando que "La publicación se editó satisfactoriamente"
    And actualiza los datos con la información editada.

    Examples:
    | Title                      | Description                               | ImageURL               | Price | Type         | District   | Address           | Message                                    |
    |----------------------------|-------------------------------------------|------------------------|-------|--------------|------------|-------------------|--------------------------------------------|
    | Departamento en San Miguel | Se alquila departamento para 1 estudiante | https://www.google.com | 500   | Departamento | San Miguel | Av. La Marina 123 | La publicación se editó satisfactoriamente |


Scenario: El arrendador no edita su publicación correctamente

    Given que el arrendador se encuentra en el formulario de edición de una publicación
    When deja en blanco alguno de los campos obligatorios
    And hace clic en “Publicar”
    Then la aplicación muestra un mensaje indicando "Por favor, completar todos los campos"

    Examples:
    | Title   | Description                               | ImageURL               | Price | Type         | District   | Address           | Message                                |
    |---------|-------------------------------------------|------------------------|-------|--------------|------------|-------------------|----------------------------------------|
    |         | Se alquila departamento para 1 estudiante | https://www.google.com | 500   | Departamento | San Miguel | Av. La Marina 123 | Por favor, completar todos los campos" |
