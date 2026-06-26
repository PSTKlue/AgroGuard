# language: es
Característica: HU016 Historial centralizado de confirmaciones de alertas

  Escenario: Consulta exitosa de la línea de tiempo de auditoría
    Dado que el usuario accede al módulo de auditoría de alertas
    Cuando selecciona una alerta cerrada del listado histórico
    Entonces el sistema despliega de forma estructurada la línea de tiempo: hora de detección de la IA, hora de asignación al técnico, hora de inspección en campo y hora de aplicación del tratamiento

  Escenario: Intento de consulta de auditoría en una alerta que sigue abierta
    Dado que el agrónomo se encuentra revisando el panel de control de incidencias
    Cuando selecciona un foco de infección que aún se encuentra "En Revisión"
    Entonces el sistema muestra las marcas de tiempo acumuladas hasta el momento e indica explícitamente que la fase de mitigación sigue incompleta