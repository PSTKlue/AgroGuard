# language: es
Característica: HU026 Alertas automatizadas de stock de insumos fitosanitarios críticos

  Escenario: Disparo de alerta de reposición urgente al llegar al límite mínimo de stock
    Dado que el inventario digital registra el stock del fungicida "Cupravit" en su límite mínimo (Input: variable_stock = 5)
    Cuando el operador de campo registra la aplicación de una dosis en una parcela offline (Input: string_tratamiento = "Cupravit", int_cantidad = 5)
    Entonces el backend procesa la reducción del inventario (Output: variable_stock = 0)
    Y el sistema despacha una notificación de emergencia al área de logística (Output: string_asunto = "Reposición Urgente de Insumos Fitosanitarios")

  Escenario: Registro de tratamiento con insumo completamente agotado en almacén
    Dado que un operario intenta confirmar la aplicación en campo de un agroquímico cuyo inventario digital marca cero unidades (Input: variable_stock = 0)
    Cuando introduce los datos del formulario de control fitosanitario en la aplicación (Input: formulario_tratamiento)
    Entonces el sistema bloquea el almacenamiento del registro de control en la base de datos central
    Y despliega un mensaje de error restrictivo en la interfaz (Output: string_error = "Inconsistencia de inventario. Ingrese el código de lote del nuevo reabastecimiento")
