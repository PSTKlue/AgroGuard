# language: es
Característica: HU018 Resolución de conflictos de sincronización concurrente

  Escenario: Sincronización con marcas de tiempo idénticas (Prevalencia de Rol)
    Dado que la aplicación procesa una cola de sincronización al recuperar señal
    Cuando detecta que dos operadores enviaron modificaciones sobre el estado del mismo lote con marcas de tiempo idénticas
    Entonces prioriza el reporte del usuario con rol de Ingeniero Agrónomo o, en su defecto, abre una pantalla de conciliación manual para el Jefe de Sanidad

  Escenario: Sincronización secuencial sin conflicto de datos
    Dado que la base de datos central recibe múltiples reportes offline en cola
    Cuando las marcas de tiempo de las modificaciones son claramente distintas y consecutivas
    Entonces el sistema fusiona las entradas cronológicamente en el historial de la parcela sin disparar pantallas de error o alertas de conflicto