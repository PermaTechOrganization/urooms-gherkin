Feature: El estudiante se registra en la aplicación

Scenario: El estudiante completa los datos de cuenta satisfactoriamente
    Given que el estudiante visualiza el formulario de registro
    When el estudiante llena todos los campos obligatorios correspondientes
    And el estudiante elige el tipo de usuario “Estudiante”
    And el estudiante hace clic en “Siguiente”
    Then la aplicación redirige al formulario de datos del estudiante

    Examples:
    | UserName      | Email                    | Password      |
    |---------------|--------------------------|---------------|
    | carolinap123  | coerez123@gmail.com      | Securepass12. |


Scenario: El estudiante completa los datos de verificación satisfactoriamente
    Given que el estudiante visualiza el formulario de datos del estudiante
    When el estudiante completa los campos obligatorios correspondientes
    And el estudiante sube algún documento que certifique que es un universitario
    And el estudiante hace clic en “Crear cuenta”
    Then la aplicación muestra un mensaje indicando que el archivo entrará en revisión

    Examples:
    | FirstName | LastName | Gender   | DNI       | Phone     | PhotoUrl                | Certification  | University | Career   | Message                               |
    |-----------|----------|----------|-----------|-----------|-------------------------|----------------|------------|----------|---------------------------------------|
    | Carolina  | Perez    | Femenino | 87654321  | 965820112 | https://www.img.com/img | photo.png      | UPC        | Medicina | El documento se encuentra en revisión |

Scenario: El estudiante no completa los campos obligatorios
    Given que el estudiante se encuentra en el formulario de registro o de datos del estudiante
    When el estudiante no llena todos los campos obligatorios correspondientes
    And el estudiante hace clic en “Siguiente” o “Crear cuenta”
    Then la aplicación muestra un mensaje de “Por favor, ingrese la información solicitada”

    Examples:

    | FirstName | LastName | Gender   | DNI       | Phone     | PhotoUrl                | Certification  | University | Career   | Message                                      |
    |-----------|----------|----------|-----------|-----------|-------------------------|----------------|------------|----------|----------------------------------------------|
    | Carolina  | Perez    | Femenino | 87654321  |           | https://www.img.com/img | photo.png      | UPC        | Medicina | Por favor, ingrese la información solicitada |
