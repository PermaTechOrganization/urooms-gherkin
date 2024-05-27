Feature: Calificar inmuebles 

Scenario: El estudiante califica una propiedad en alquiler

    Given que el estudiante ha alquilado una habitación
    When finaliza su estadía o lo vea conveniente 
    And decide dejar una reseña
    Then proporciona una calificación y comentarios detallados sobre el inmueble

    Examples:
  
    | Usuario | Calificación |              Comentario                  |
    |---------|--------------|------------------------------------------|
    |  Manolo |       5      | Excelente ubicación, muy cómodo y limpio |

Scenario: El estudiante visualiza las calificaciones de propiedades

    Given que un estudiante está buscando un lugar para alquilar cerca de su universidad
    When busca propiedades 
    And filtra los resultados por calificaciones y comentarios
    Then puede ver las calificaciones y comentarios de inquilinos anteriores sobre la propiedad

    Examples:
  
    | Usuario | Calificación |              Comentario                  |
    |---------|--------------|------------------------------------------|
    | Juanita |       3      | Excelente ubicación, pero falta limpieza |