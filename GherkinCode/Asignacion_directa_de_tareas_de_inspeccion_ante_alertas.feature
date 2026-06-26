# language: es
Característica: HU014 Asignación directa de tareas de inspección ante alertas

  Escenario: Asignación directa y exitosa desde una alerta crítica
    Dado que el jefe de sanidad visualiza una alerta roja en el dashboard central
    Cuando presiona el botón "Asignar Inspección" y selecciona de la lista al técnico "Fabricio León"
    Entonces el sistema envía una orden de trabajo inmediata al dispositivo de Fabricio con las coordenadas de la zona afectada

  Escenario: Intento de asignación a un técnico no disponible o fuera de turno
    Dado que el jefe de sanidad intenta delegar una inspección de emergencia en el mapa
    Cuando selecciona a un operador cuyo estado en el sistema es "Fuera de Jornada"
    Entonces el sistema bloquea la asignación, muestra un aviso de indisponibilidad y sugiere operadores activos cercanos