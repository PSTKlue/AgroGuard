# language: es
Característica: HU019 Indicador visual de estado de conexión y cola en caché

  Escenario: Modificación interactiva de la UI móvil al guardar registros en modo desconectado
    Dado que la aplicación móvil se encuentra operando en zonas rurales sin cobertura celular
    Cuando el técnico completa una inspección y presiona guardar (Input: click_boton_guardar = true)
    Entonces el frontend cambia el estado del ícono de red a un color gris con una barra diagonal
    Y actualiza dinámicamente el contador numérico de registros retenidos en pantalla (Output: ui_icono_red = "Modo Offline", int_indicador_cola = 3)

  Escenario: Decremento dinámico del contador visual al transferir datos exitosamente
    Dado que el dispositivo móvil recupera una conexión a internet móvil estable
    Cuando el servicio en segundo plano procesa y despacha un lote de reportes hacia la nube (Input: array_reportes_enviados)
    Entonces el sistema reduce de forma proporcional el número flotante del contador en la barra superior
    Y reestablece el estado del ícono visual al finalizar la transmisión (Output: int_indicador_cola = 0, ui_icono_red = "Sincronizado/Conectado")
