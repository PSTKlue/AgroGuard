# language: es
Característica: HU003 Recibir alertas

  Escenario: Tiempo de entrega automatizado de la notificación push crítica
    Dado que la IA confirma de forma automática un brote severo en la base de datos central
    Cuando el servidor despacha el payload de emergencia a la red (Input: JSON_brote_critico)
    Entonces el dispositivo móvil del Jefe de Sanidad procesa la señal en menos de 1 minuto
    Y renderiza un banner rojo persistente en la barra de notificaciones (Output: Alerta_Push_Critica)

  Escenario: Retención horaria de alertas informativas no urgentes
    Dado que el Jefe de Sanidad ha configurado sus alertas en modo nocturno
    Cuando el sistema genera una notificación puramente informativa fuera del horario de trabajo (Input: string_tipo_alerta = "Informativa")
    Entonces la base de datos retiene el envío inmediato en la cola del servidor
    Y lo consolida para el despacho matutino automatizado (Output: bool_notificacion_enviada = false)
