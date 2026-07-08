# language: es
Característica: HU013 Notificaciones push jerárquicas según nivel de criticidad

  Escenario: Recepción de alerta push de máxima prioridad con UI diferenciada
    Dado que la IA procesa una anomalía de alta severidad en el servidor
    Cuando el sistema despacha el payload hacia los dispositivos móviles vinculados (Input: JSON_alerta = [severidad: "Alta", plaga: "Gusano Cogollero"])
    Entonces la aplicación móvil activa de forma prioritaria el canal de notificaciones de emergencia del sistema operativo
    Y muestra una tarjeta flotante roja con sonido de advertencia persistente (Output: ui_notificacion_estilo = "Alerta Máxima")

  Escenario: Recepción de una notificación informativa de baja prioridad
    Dado que el backend procesa un evento rutinario de mantenimiento del sistema sin riesgos fitosanitarios
    Cuando se distribuye el mensaje informativo general a la red de usuarios (Input: JSON_alerta = [severidad: "Baja", mensaje: "Sincronización Completada"])
    Entonces los teléfonos móviles reciben la alerta en segundo plano de manera silenciosa
    Y añaden un ícono verde estándar en la barra superior sin interrumpir la pantalla (Output: ui_notificacion_estilo = "Silenciosa")
