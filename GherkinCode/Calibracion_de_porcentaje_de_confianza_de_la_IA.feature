# language: es
Característica: HU009 Calibración de porcentaje de confianza de la IA

  Escenario: Actualización en caliente del umbral de acierto del modelo de visión
    Dado que el Administrador del Sistema abre el panel de control técnico del backend de IA
    Cuando introduce un nuevo valor decimal y presiona el botón guardar (Input: float_umbral_confianza = 0.92)
    Entonces el motor de inferencia actualiza sus hiperparámetros en caliente de forma inmediata
    Y restringe el etiquetado automático en el mapa a los focos que igualen o superen el nuevo valor (Output: int_ajuste_ia = 1)

  Escenario: Intento de reducción del umbral de confianza bajo el límite crítico de seguridad
    Dado que el Administrador del Sistema edita los parámetros de sensibilidad del modelo predictivo
    Cuando intenta establecer un valor excesivamente bajo de confianza (Input: float_umbral_confianza = 0.40)
    Entonces el sistema deniega el guardado de la variable para evitar la propagación masiva de falsos positivos
    Y muestra una advertencia restrictiva (Output: string_advertencia = "Límite mínimo seguro es de 0.70")
