# language: es
Característica: HU003 Recibir alertas

  Escenario: Tiempo de entrega de la notificación crítica
    Dado que se ha detectado una amenaza fitosanitaria severa en un lote
    Cuando el sistema registra el incidente en la base de datos
    Entonces la alerta push debe llegar al dispositivo del Jefe de Sanidad en un tiempo menor a 1 minuto

  Escenario: Configuración de franja horaria para alertas no críticas
    Dado que el Jefe de Sanidad ha configurado el modo "Resumen Nocturno" en sus ajustes
    Cuando el sistema detecta una anomalía de nivel leve o puramente informativa fuera del horario laboral
    Entonces retiene la notificación push y la consolida en el reporte programado para la mañana siguiente