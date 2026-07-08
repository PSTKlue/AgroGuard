# language: es
Característica: HU005 Sincronizar Información

  Escenario: Transferencia automática y masiva de la cola de reportes al recuperar señal
    Dado que el smartphone del Operador de Campo detecta el restablecimiento de una red estable (Input: bool_conexion_internet = true)
    Cuando el servicio en segundo plano inicia la transmisión de los registros en cola
    Entonces el backend procesa las solicitudes HTTP POST insertando los datos de forma íntegra
    Y actualiza las etiquetas del estado de los reportes locales (Output: string_estado_sincro = "Sincronizado", int_contador_cola = 0)

  Escenario: Interrupción abrupta de la conectividad de red durante la sincronización
    Dado que el proceso de sincronización automática se encuentra transmitiendo archivos pesados
    Cuando la señal celular sufre un microcorte intermedio en el fundo (Input: bool_conexion_internet = false)
    Entonces el motor móvil detiene la carga sin corromper los archivos intermedios
    Y mantiene los reportes remanentes congelados en la caché local (Output: int_archivos_retenidos = 3)
