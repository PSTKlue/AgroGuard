# language: es
Característica: HU013 Notificaciones push jerárquicas según nivel de criticidad

  Escenario: Tiempo de entrega de la notificación crítica
    Dado que la IA procesa una anomalía crítica de "Gusano Cogollero" en un lote
    Cuando el servidor despacha la notificación a los celulares vinculados
    Entonces el dispositivo móvil emite una alerta persistente con un ícono rojo de "Alerta Máxima" que destaca sobre las alertas amarillas de "Riesgo Moderado"

  Escenario: Recepción de un reporte meramente informativo
    Dado que el sistema procesa un reporte regular de "Análisis completado" sin anomalías fitosanitarias
    Cuando se despacha la alerta al celular del usuario
    Entonces el dispositivo móvil muestra una notificación silenciosa en color verde sin activar alarmas sonoras de emergencia