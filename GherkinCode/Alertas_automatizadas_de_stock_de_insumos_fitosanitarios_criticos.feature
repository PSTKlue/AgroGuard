# language: es
Característica: HU026 Alertas automatizadas de stock de insumos fitosanitarios críticos

  Escenario: Disparo de alerta de reposición al llegar al límite mínimo de stock
    Dado que el stock de un fungicida específico para el Tizón se encuentra en su límite mínimo (ej. 5 galones)
    Cuando un técnico registra la aplicación de un tratamiento offline que consume el remanente
    Entonces el sistema dispara una alerta inmediata al área de logística con el asunto "Reposición Urgente de Insumos Fitosanitarios" para evitar desabastecimiento

  Escenario: Registro de tratamiento con insumo completamente agotado en almacén
    Dado que un operario intenta confirmar la aplicación en campo de un agroquímico cuyo inventario digital marca cero unidades
    Cuando procesa el formulario de control fitosanitario en la app
    Entonces el sistema bloquea el registro, emite un error de inconsistencia de inventario y le solicita ingresar el código de lote del nuevo reabastecimiento antes de continuar