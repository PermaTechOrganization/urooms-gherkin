Feature: Revisar y firmar el contrato de arrendamiento

Scenario: El estudiante revisa y firma el contrato de arrendamiento

    Given que el estudiante ha iniciado sesión en la aplicación
    When accede a la sección de contratos de arrendamiento pendientes
    And revisa el contrato enviado por el arrendador
    Then tiene la opción de firmar el contrato
    And al firmarlo, el contrato se convierte en activo y se notifica al arrendador

    Examples:
  
    | Fecha de Inicio | Fecha de Fin | Firma Arrendador | Firma Estudiante | Precio | Condiciones | Descripción    | URL del Contenido             | ID Arrendador | ID Estudiante |
    |-----------------|--------------|------------------|------------------|--------|-------------|----------------|-------------------------------|---------------|---------------|
    | 2024-07-01      | 2025-06-30   | Firmado          | Firmado          | 500    | No mascotas | Piso amueblado | http://example.com/imagen.png | 1             | 101           |
