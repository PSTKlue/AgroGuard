# language: es
Característica: HU012 Configuración de umbrales de alerta personalizados por lote

  Escenario: Guardado de restricción de alertas por estrés hídrico
    Dado que el Jefe de Sanidad Vegetal edita las reglas de notificación específicas para el "Lote Sur"[cite: 1]
    Cuando define que un índice NDVI en categoría de "Riesgo" superior al 15% del área debe alertar[cite: 1]
    Entonces el sistema debe guardar la restricción y omitir el disparo de alertas push ordinarias si el daño se encuentra por debajo de dicho límite

  Escenario: Configuración de un umbral ilógico o contradictorio
    Dado que el Jefe de Sanidad edita los límites de tolerancia de alertas en un lote de cultivo[cite: 1]
    Cuando ingresa que el umbral de alerta "Crítica" sea menor cuantitativamente que el umbral de alerta de "Advertencia"
    Entonces el sistema bloquea el guardado del formulario, describe la inconsistencia de los datos numéricos y le solicita corregir la jerarquía de los valores de riesgo