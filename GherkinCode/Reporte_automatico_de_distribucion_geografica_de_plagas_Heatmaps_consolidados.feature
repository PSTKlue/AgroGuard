# language: es
Característica: HU024 Reporte automático de distribución geográfica de plagas (Heatmaps consolidados)

  Escenario: Generación de mapa regional de densidad de contagio
    Dado que el usuario selecciona el rango histórico "Campaña Verano 2026"
    Cuando solicita el reporte consolidado de mapas de calor
    Entonces el backend procesa los registros GPS de todos los lotes y renderiza un mapa regional que resalta las zonas de mayor contagio acumulado con manchas de densidad de color degradado

  Escenario: Filtrado geográfico sin incidencias fitosanitarias registradas
    Dado que el jefe de sanidad busca generar un mapa de calor para un sector específico del valle
    Cuando el filtro de búsqueda corresponde a un periodo de tiempo donde la IA no confirmó focos de infección
    Entonces el sistema muestra el plano satelital limpio y despliega un banner informativo indicando "0 anomalías detectadas en este rango"