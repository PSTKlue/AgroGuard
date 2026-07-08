# language: es
Característica: HU018 Resolución de conflictos de sincronización concurrente

  Escenario: Sincronización masiva con marcas de tiempo idénticas aplicando regla de jerarquía por roles
    Dado que el servidor central procesa la cola de sincronización de datos al detectar red
    Cuando detecta dos inserciones offline contradictorias sobre el mismo lote con marcas de tiempo idénticas (Inputs: reporte_operador_A, reporte_ing_agronomo_B)
    Entonces el algoritmo aplica la regla de jerarquía de seguridad, priorizando de forma automática los datos del profesional de mayor rango
    Y actualiza el registro maestro del cultivo (Output: registro_guardado = datos_reporte_ing_agronomo_B, bool_alerta_conflicto = false)

  Escenario: Activación de pantalla de conciliación manual ante conflicto de datos del mismo nivel
    Dado que el backend procesa las solicitudes de actualización de datos de campo en segundo plano
    Cuando intercepta dos reportes offline de idéntica marca de tiempo enviados por técnicos del mismo rango (Inputs: reporte_operador_A, reporte_operador_B)
    Entonces el sistema suspende temporalmente la inserción automática para evitar la sobreescritura de información
    Y deriva el caso a una cola de revisión manual para el Jefe de Sanidad (Output: string_estado_sincro = "Requiere Conciliación Manual")
