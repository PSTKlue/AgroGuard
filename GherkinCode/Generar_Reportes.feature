# language: es
Característica: HU006 Generar reportes

  Escenario: Exportación a formato PDF
    Dado que el Jefe de Sanidad se encuentra en el panel de evaluación sanitaria del cultivo
    Cuando selecciona los parámetros deseados y presiona el botón "Exportar"
    Entonces el sistema debe generar y descargar automáticamente un reporte consolidado en formato PDF

  Escenario: Intento de generación de reporte sin seleccionar parámetros obligatorios
    Dado que el Jefe de Sanidad abre el módulo de generación de reportes
    Cuando presiona el botón "Exportar" dejando en blanco el rango de fechas obligatorio
    Entonces el sistema bloquea la descarga del documento y muestra una alerta solicitando especificar el periodo de la campaña a evaluar