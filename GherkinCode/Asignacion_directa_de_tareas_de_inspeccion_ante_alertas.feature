# language: es
Característica: HU014 Asignación directa de tareas de inspección ante alertas

  Escenario: Delegación exitosa de una tarea de inspección desde el dashboard central
    Dado que el Jefe de Sanidad visualiza una alerta crítica en su panel administrativo
    Cuando presiona el botón "Asignar Inspección" y selecciona un operario activo (Inputs: int_id_alerta = 902, string_tecnico = "Fabricio León")
    Entonces el sistema genera una nueva orden de trabajo en la base de datos vinculando las coordenadas GPS del brote
    Y despacha una tarea inmediata al celular de Fabricio (Output: bool_orden_enviada = true, string_coordenadas_destino = "-12.0431, -77.0282")

  Escenario: Intento de asignación a un operario cuyo estado en el sistema es no disponible
    Dado que el Jefe de Sanidad intenta delegar una tarea de verificación urgente desde el mapa satelital
    Cuando selecciona a un técnico cuyo estado de jornada es inactivo (Inputs: int_id_alerta = 902, string_tecnico = "Manuel Herrera", string_estado_jornada = "Inactivo")
    Entonces la aplicación bloquea la acción, congela el envío de la orden de trabajo
    Y despliega un modal informativo sugiriendo técnicos alternativos disponibles (Output: string_error_asignacion = "Operador fuera de jornada laboral")
