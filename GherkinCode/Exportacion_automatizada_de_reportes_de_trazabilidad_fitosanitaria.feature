# language: es
Característica: HU022 Exportación automatizada de reportes de trazabilidad fitosanitaria

  Escenario: Compilación exitosa del reporte digital inmodificable para SENASA
    Dado que el jefe de sanidad entra al módulo de reportes y selecciona los filtros de exportación fitosanitaria
    Cuando presiona el botón "Generar Certificación Fitosanitaria"
    Entonces el sistema genera un documento PDF formal, libre de modificaciones, que incluye el membrete de la empresa, firmas digitales de los agrónomos responsables y el sello de conformidad con bajo uso de químicos

  Escenario: Intento de generación de reporte sin firmas de agrónomos registradas
    Dado que el jefe de sanidad solicita la exportación de trazabilidad fitosanitaria de la campaña
    Cuando el lote seleccionado posee evaluaciones que no han sido firmadas digitalmente por un agrónomo colegiado
    Entonces la plataforma detiene la compilación, muestra una alerta de error y provee un listado de los campos pendientes de firma