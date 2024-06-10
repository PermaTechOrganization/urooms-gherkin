Feature: Ver contratos de arrendamiento activos

Scenario: El arrendador visualiza los contratos de arrendamiento activos

    Given que el arrendador ha iniciado sesión en la aplicación
    When accede a la sección de contratos de arrendamiento
    Then puede ver una lista de todos sus contratos de arrendamiento activos con los detalles relevantes

    Examples:
  
    | Fecha de Inicio | Fecha de Fin | Firma Arrendador | Firma Estudiante | Precio | Condiciones | Descripción    | URL del Contenido             | ID Arrendador | ID Estudiante |
    |-----------------|--------------|------------------|------------------|--------|-------------|----------------|-------------------------------|---------------|---------------|
    | 2024-07-01      | 2025-06-30   | Firmado          | Firmado          | 500    | No mascotas | Piso amueblado | http://example.com/imagen.png | 1             | 101           |
