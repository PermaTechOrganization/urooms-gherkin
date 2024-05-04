Feature: Modificación de datos personales

Scenario: El arrendador agrega datos a su cuenta

    Given que el arrendador ya tiene su cuenta creada
    And quiere agregar más información
    When hace clic en el botón de actualizar información
    And agrega la información que desee
    And le da clic al botón guardar
    Then la aplicación muestra un mensaje de “Se agregó esta nueva información”

    Examples:
    
    | PhotoUrl  | Message                                   |
    |-----------|-------------------------------------------|
    | image.png | Se agregó esta nueva información          |

Scenario: El arrendador edita los datos de su cuenta

    Given que el arrendador tiene su cuenta creada
    And quiere agregar más información
    When hace clic en el botón actualizar información
    And cambia la información que desee
    And le da clic al botón guardar
    Then la aplicación muestra un mensaje de “Se actualizó la información correctamente”


    Examples:

    | Phone     | Message                                   |
    |-----------|-------------------------------------------|
    | 958322157 | Se actualizó la información correctamente |