Feature: Crear un contrato de arrendamiento

Scenario: El arrendador crea un contrato de arrendamiento

    Given que el arrendador ha iniciado sesión en la aplicación
    When accede a la sección de creación de contratos de arrendamiento
    And ingresa los datos requeridos (fecha de inicio, fecha de fin, firma del arrendador, firma del estudiante, precio, condiciones, descripción, URL del contenido, IDs del arrendador y del estudiante)
    And presiona el botón de enviar
    Then la solicitud se envía al estudiante para su revisión y firma

    Examples:
  
    | Fecha de Inicio | Fecha de Fin | Firma Arrendador | Firma Estudiante | Precio | Condiciones | Descripción    | URL del Contenido            | ID Arrendador | ID Estudiante |
    |-----------------|--------------|------------------|------------------|--------|-------------|----------------|------------------------------|---------------|---------------|
    | 2024-07-01      | 2025-06-30   | Firmado          |                  | 500    | No mascotas | Piso amueblado | http://example.com/image.png | 1             | 101           |