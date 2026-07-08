# language: es
Característica: HU006 Generar reportes

  Escenario: Compilación y exportación exitosa a formato PDF imprimible
    Dado que el Jefe de Sanidad abre el panel de evaluación fitosanitaria de la campaña
    Cuando selecciona los filtros requeridos y presiona enviar (Inputs: string_cultivo = "Maíz", string_rango_fechas = "01/05/2026 - 20/05/2026")
    Entonces el backend unifica los datos de la base de datos y compila un archivo binario estructurado
    Y descarga el documento inmodificable directamente en el dispositivo (Output: archivo_descargado = "Resumen_20-05-2026.pdf")

  Escenario: Intento de descarga de reporte omitiendo el rango de fechas obligatorio
    Dado que el Jefe de Sanidad interactúa con el módulo web de reportes agrícolas
    Cuando presiona el botón "Generar Reporte" dejando el campo de fechas vacío (Input: string_rango_fechas = "")
    Entonces la plataforma interrumpe la consulta SQL al servidor de base de datos
    Y despliega un mensaje de error en la pantalla (Output: string_alerta = "Debe especificar un rango de fechas válido")
