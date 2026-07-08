# language: es
Característica: HU012 Configuración de umbrales de alerta personalizados por lote

  Escenario: Guardado exitoso de límites restrictivos de estrés hídrico para un cultivo
    Dado que el Jefe de Sanidad Vegetal abre el panel de edición de umbrales del "Lote Sur"
    Cuando define el porcentaje de tolerancia máximo permitido antes de una alerta (Input: int_umbral_tolerancia = 15)
    Entonces la base de datos almacena el valor entero vinculándolo estrictamente al identificador de la parcela
    Y actualiza las reglas del motor de notificaciones en tiempo real (Output: bool_regla_guardada = true)

  Escenario: Configuración errónea de jerarquías numéricas en los límites de riesgo
    Dado que el Jefe de Sanidad edita los límites numéricos de riesgo fitosanitario en el formulario web
    Cuando ingresa que el valor crítico de alarma sea numéricamente inferior al de advertencia básica (Inputs: int_umbral_critico = 10, int_umbral_advertencia = 30)
    Entonces el sistema bloquea el envío de datos e interrumpe el guardado del formulario
    Y despliega un mensaje aclaratorio en la UI (Output: string_error_jerarquia = "El umbral crítico debe ser mayor que el de advertencia")
