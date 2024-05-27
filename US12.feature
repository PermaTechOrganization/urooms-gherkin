Feature: Comunicación con el arrendador

Scenario: El estudiante quiere comunicarse con el arrendador

    Given que soy  estudiante  quiero acceder a comunicarme con el arrendador
    When el usuario esté en el perfil de un arrendador
    And haga clic en el ícono de mensaje
    Then la aplicación mostrará la conversación entre el estudiante y el arrendador.

    Example: 

    | estudiante | arrendador |                 mensaje                 |
    |------------|------------|-----------------------------------------|
    |   Mario    |   Pedro    |  "Hola, necesito hablar sobre el pago"  |

Scenario: El estudiante quiere comunicarse tener un contacto con el arrendador para confirmar detalles sobre la propiedad

    Given que soy un estudiante interesado en una propiedad
    When acceda a la publicación seleccionada y haga clic en “Datos de contacto”
    Then tendré acceso directo a los datos del arrendador, como número de teléfono o correo electrónico.
    And podré comunicarme con el arrendador para confirmar detalles sobre la propiedad

    Example:

    | estudiante | arrendador |  numero de telefono del arrendador  | correo electronico del arrendador  |
    |------------|------------|-------------------------------------|------------------------------------|
    |   Mario    |   Pedro    |           987654321                 |       pedrito123@gmail.com         |