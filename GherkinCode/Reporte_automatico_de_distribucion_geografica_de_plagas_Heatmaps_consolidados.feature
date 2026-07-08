# language: es
Característica: HU024 Reporte automático de distribución geográfica de plagas

  Escenario: Procesamiento y renderizado del mapa regional consolidado de densidad de focos de infección
    Dado que el Jefe de Sanidad abre la consola de visualización cartográfica regional del valle
    Cuando introduce el rango de tiempo de la campaña a evaluar y confirma (Input: string_rango_campaña = "Campaña Verano 2026")
    Entonces el servidor procesa los metadatos de geolocalización GPS de todas las alertas confirmadas en el periodo
    Y superpone en el mapa capas de degradado térmico indicando las áreas de mayor concentración acumulada (Output: ui_mapa_capa = "Heatmap_Densidad_Plagas")

  Escenario: Filtrado temporal de mapas de calor en un sector del valle sin incidencias fitosanitarias
    Dado que el Jefe de Sanidad busca generar un mapa de densidad geográfica para un sector específico del valle
    Cuando define un rango de fechas donde no se registraron brotes ni alertas de IA en el terreno (Input: string_rango_fechas = "01/01/2026 - 15/01/2026")
    Entonces el sistema cartográfico renderiza el plano geográfico satelital limpio sin capas térmicas superpuestas
    Y despliega un cintillo informativo en la interfaz (Output: string_info_mapa = "0 anomalías registradas en las coordenadas del sector seleccionado")
