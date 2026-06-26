# language: es
Característica: HU017 Almacenamiento en caché local de mapas NDVI georreferenciados

  Escenario: Descarga completa del mapa para uso en zonas de sombra
    Dado que el operador está conectado al Wi-Fi del campamento central
    Cuando abre el mapa de un lote y presiona el ícono de "Descargar para Uso Offline"
    Entonces el sistema empaqueta las capas de color georreferenciadas en la memoria caché del teléfono, permitiendo usar el GPS nativo sobre el mapa sin consumir datos de red

  Escenario: Intento de descarga sin espacio suficiente en el almacenamiento del celular
    Dado que el operador solicita la descarga offline de un mapa pesado de alta resolución
    Cuando el almacenamiento interno libre del dispositivo móvil es menor a 50 MB
    Entonces la aplicación interrumpe el proceso, cancela la descarga y despliega un mensaje notificando la necesidad de liberar espacio en disco