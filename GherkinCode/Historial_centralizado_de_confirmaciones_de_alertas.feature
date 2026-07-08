# language: es
Característica: HU016 Historial centralizado de confirmaciones de alertas

  Escenario: Despliegue cronológico estructurado de la línea de tiempo de auditoría de una incidencia
    Dado que el Jefe de Sanidad accede al historial de incidencias fitosanitarias
    Cuando selecciona una alerta del listado cuyo estado es cerrado (Input: int_id_alerta_cerrada = 7701)
    Entonces la aplicación consulta la base de datos y unifica las marcas de tiempo registradas
    Y renderiza en pantalla la línea de tiempo completa de auditoría (Output: array_linea_tiempo = [hora_deteccion_ia, hora_asignacion, hora_inspeccion, hora_mitigacion])

  Escenario: Intento de visualización de línea de tiempo completa de una alerta activa
    Dado que el Ingeniero Agrónomo revisa el panel de incidencias activas en el campo
    Cuando escoge un foco infeccioso que sigue en proceso de revisión (Input: int_id_alerta_activa = 7702)
    Entonces el sistema muestra las marcas de tiempo acumuladas de forma parcial hasta el momento
    Y renderiza un indicador gráfico reflejando que la fase de mitigación sigue incompleta (Output: string_estado_flujo = "Fase de Mitigación Pendiente")
