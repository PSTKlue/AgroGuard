# language: es
Característica: HU025 Envío programado de resúmenes semanales por correo electrónico

  Escenario: Despacho automatizado del resumen HTML los lunes por la mañana
    Dado que la opción de "Suscripción a Reportes Semanales" está activa en el perfil del usuario
    Cuando el cronómetro del servidor marca los lunes a las 06:00 AM
    Entonces recopila los datos de alertas de las últimas 168 horas y despacha un correo automatizado con un resumen en formato HTML interactino

  Escenario: Cancelación voluntaria de la suscripción al correo semanal
    Dado que un agrónomo decide desactivar las alertas por correo para evitar la saturación de su bandeja
    Cuando desmarca la opción correspondiente en su sección de ajustes de perfil
    Entonces el servidor elimina la dirección de la lista de distribución automatizada y detiene los envíos programados de los lunes