# language: es
Característica: HU022 Exportación automatizada de reportes de trazabilidad fitosanitaria

  Escenario: Compilación de reporte digital fitosanitario inmodificable para trámites de aduana o SENASA
    Dado que el Jefe de Sanidad abre el panel corporativo de certificaciones fitosanitarias
    Cuando selecciona los filtros correspondientes a la temporada y envía (Inputs: int_id_fundo = 20, string_campaña = "Campaña Verano 2026")
    Entonces el backend compila los registros fitosanitarios incluyendo los metadatos de las firmas digitales de los agrónomos colegiados responsables
    Y genera un documento binario inmodificable listo para trámites de aduana (Output: archivo_pdf = "Certificado_Trazabilidad_2026.pdf", bool_documento_firmado = true)

  Escenario: Bloqueo de exportación por falta de firmas de agrónomos colegiados en las evaluaciones del periodo
    Dado que el Jefe de Sanidad solicita la compilación de un reporte de trazabilidad para agroexportación
    Cuando el lote seleccionado posee evaluaciones que no han sido validadas por un profesional colegiado (Inputs: int_id_fundo = 20, int_evaluaciones_pendientes_firma = 3)
    Entonces la plataforma detiene de forma controlada la compilación del archivo PDF corporativo
    Y emite una alerta detallando los registros que causaron la inconsistencia (Output: string_error_reporte = "Exportación denegada. Existen evaluaciones críticas sin firma digital")
