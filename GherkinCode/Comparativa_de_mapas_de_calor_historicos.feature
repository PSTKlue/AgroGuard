# language: es
Característica: HU008 Comparativa de mapas de calor históricos

  Escenario: Visualización en pantalla dividida de dos fechas
    Dado que el Ingeniero Agrónomo se encuentra revisando el historial de una parcela
    Cuando activa la herramienta "Comparar Historial" y selecciona las fechas específicas
    Entonces el sistema divide la interfaz en dos secciones verticales reflejando ambos mapas para comparar visualmente el avance o retroceso de la vegetación

  Escenario: Intento de comparación cronológica invertida
    Dado que el Ingeniero Agrónomo interactúa con el selector de mapas en pantalla dividida
    Cuando selecciona por error una "Fecha Final" que es cronológicamente anterior a la "Fecha Inicial"
    Entonces el sistema reordena automáticamente los mapas de forma cronológica correcta de izquierda a derecha y emite un aviso breve de autocorrección