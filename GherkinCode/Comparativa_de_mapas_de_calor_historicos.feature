# language: es
Característica: HU008 Comparativa de mapas de calor históricos

  Escenario: Visualización en pantalla dividida de dos fechas seleccionadas
    Dado que el Ingeniero Agrónomo se encuentra en el módulo histórico de la parcela "Lote Norte"
    Cuando selecciona dos periodos de tiempo y activa la herramienta interactiva (Inputs: fecha_A = "15/10/2025", fecha_B = "27/10/2025")
    Entonces el frontend divide la interfaz en dos visores móviles verticales paralelos (Output: panel_izquierdo = mapa_NDVI_A, panel_derecho = mapa_NDVI_B)
    Y sincroniza los controles de zoom geográfico de ambos lados simultáneamente

  Escenario: Intento de comparación cronológica invertida
    Dado que el Ingeniero Agrónomo interactúa con los selectores de fechas en el visor histórico
    Cuando configura erróneamente una fecha inicial posterior a la final (Inputs: fecha_inicial = "20/05/2026", fecha_final = "01/05/2026")
    Entonces el sistema bloquea la renderización en pantalla dividida por inconsistencia de datos
    Y reordena automáticamente los valores de forma cronológica correcta de izquierda a derecha (Output: reorden_fechas = true)
