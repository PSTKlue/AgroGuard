# language: es
Característica: HU019 Indicador visual de estado de conexión y cola en caché

  Escenario: Cambio de estado de la interfaz al perder conectividad
    Dado que la app opera en "Modo Desconectado"
    Cuando el evaluador guarda una ficha de campo con fotos de plagas
    Entonces el ícono de la nube cambia a un color gris con una raya diagonal y despliega un número flotante (ej. "[3] Reportes en cola") indicando el estado pendiente de sincronización

  Escenario: Restablecimiento de la señal e inicio de transmisión
    Dado que el dispositivo móvil recupera una conexión a internet estable
    Cuando el servicio en segundo plano inicia el envío de los archivos en cola
    Entonces el indicador numérico decrece dinámicamente y el ícono de la nube cambia a verde con una animación de carga exitosa