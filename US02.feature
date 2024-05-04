Feature: El arrendador se registra en la aplicación

Scenario: El arrendador completa sus datos de cuenta satisfactoriamente
    Given que el arrendador visualiza el formulario de registro
    When el arrendador llena todos los campos obligatorios correspondientes
    And el arrendador elige el tipo de usuario "Arrendador"
    And el arrendador hace clic en “Siguiente”
    Then la aplicación redirige al formulario de datos personales

    Examples:
    
    | UserName | Email                    | Password  |
    |----------|--------------------------|-----------|
    | maria02  | mariacastillo2@gmail.com | AbjD0121a |

Scenario: El arrendador completa sus datos personales satisfactoriamente
    Given que el arrendador visualiza el formulario de datos personales
    When el arrendador completa los campos obligatorios correspondientes
    And el arrendador hace clic en “Crear cuenta”
    Then la aplicación muestra un mensaje de “Cuenta creada satisfactoriamente” 

    Examples:


    | FirstName | LastName | DNI      | Phone     | PhotoUrl                | Message                         |
    |-----------|----------|----------|-----------|-------------------------|---------------------------------|
    | María     | Castillo | 12345678 | 987654321 | https://www.img.com/img | Cuenta creada satisfactoriamente|


Scenario: El arrendador no completa todos los datos de registro obligatorios
    Given que el arrendador se encuentra en el formulario de registro o de datos personales
    When el arrendador no llena todos los campos obligatorios correspondientes
    And el arrendador hace clic en “Siguiente” o “Crear cuenta” 
    Then la aplicación muestra un mensaje de “Por favor, ingrese la información solicitada”

    Examples:
    | FirstName | LastName | DNI      | Phone     | PhotoUrl                | Message                                      |
    |-----------|----------|----------|-----------|-------------------------|----------------------------------------------|
    | María     | Castillo |          | 987654321 | https://www.img.com/img | Por favor, ingrese la información solicitada |
