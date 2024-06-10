Feature: Finalizar un contrato de arrendamiento

Scenario: El arrendador finaliza un contrato de arrendamiento

    Given que el arrendador ha iniciado sesión en la aplicación
    When accede a la sección de contratos de arrendamiento activos
    And selecciona un contrato
    And decide finalizarlo
    Then la aplicación actualiza el estado del contrato a finalizado y notifica al estudiante

    Examples:
  
    | Fecha de Inicio | Fecha de Fin | Firma Arrendador | Firma Estudiante | Precio | Condiciones | Descripción    | URL del Contenido             | ID Arrendador | ID Estudiante |
    |-----------------|--------------|------------------|------------------|--------|-------------|----------------|-------------------------------|---------------|---------------|
    | 2024-07-01      | 2025-06-30   | Firmado          | Firmado          | 500    | No mascotas | Piso amueblado | http://example.com/imagen.png | 1             | 101           |
