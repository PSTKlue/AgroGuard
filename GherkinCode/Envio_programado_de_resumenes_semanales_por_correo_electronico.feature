# language: es
Característica: HU025 Envío programado de resúmenes semanales por correo electrónico

  Escenario: Compilación y despacho automático del resumen fitosanitario semanal por correo institucional
    Dado que el Ingeniero Agrónomo mantiene activa la suscripción de resúmenes semanales en los ajustes de su perfil
    Cuando el cronómetro de tareas automatizadas del servidor se activa por horario (Input: timestamp_servidor = "Lunes, 06:00 AM")
    Entonces el sistema empaqueta de forma automática los datos analíticos y brotes de las últimas 168 horas
    Y despacha un correo estructurado en formato HTML con gráficos dinámicos (Output: bool_correo_enviado = true, string_destinatario = "agronomo@fundo.com")

  Escenario: Cancelación voluntaria de la suscripción al servicio de correos automatizados
    Dado que un Ingeniero Agrónomo decide dar de baja las notificaciones por correo para optimizar su bandeja de entrada
    Cuando desmarca la casilla correspondiente y confirma los cambios en su cuenta (Input: click_checkbox_suscripcion = false)
    Entonces el servidor actualiza la variable booleana correspondiente en la tabla de usuarios de la base de datos
    Y elimina de forma permanente la dirección de la lista de distribución automatizada de los lunes (Output: bool_suscripcion_activa = false)
