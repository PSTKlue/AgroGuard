# language: es
Característica: HU005 Sincronizar Información

  Escenario: Sincronización sin pérdida de datos
    Dado que el dispositivo del Operador de Campo tiene datos guardados localmente y recupera el acceso a una red de internet estable
    Cuando se inicia el proceso de sincronización con el servidor
    Entonces el sistema debe asegurar que el 100% de los datos se transfieran sin pérdidas y actualizar el estado local a "Sincronizado"

  Escenario: Interrupción abrupta de la red durante la sincronización
    Dado que el dispositivo inició la transferencia automática de la cola de reportes al servidor
    Cuando la señal de internet se corta abruptamente a mitad del proceso debido a microcortes en la ruta
    Entonces el sistema detiene la carga sin corromper los archivos, mantiene en caché los reportes no enviados y reanuda la transferencia exactamente desde el último bit exitoso al recuperar la red