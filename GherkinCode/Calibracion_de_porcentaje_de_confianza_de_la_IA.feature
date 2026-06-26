# language: es
Característica: HU009 Calibración de porcentaje de confianza de la IA

  Escenario: Actualización del algoritmo en caliente
    Dado que el Administrador del Sistema está en el panel de configuración del modelo de Visión Artificial
    Cuando modifica el valor de confianza mínima permitida de 85% a 92% y guarda los cambios
    Entonces el sistema debe actualizar el motor de detección de plagas para resaltar aquellas anomalías que superen el nuevo porcentaje fijado

  Escenario: Intento de reducción del umbral por debajo del límite seguro del sistema
    Dado que el Administrador del Sistema intenta bajar el nivel de confianza de la IA a un valor crítico (ej. 40%)
    Cuando presiona el botón de guardar cambios del modelo
    Entonces el sistema deniega la operación por riesgo alto de falsos positivos y despliega una advertencia indicando que el límite mínimo seguro es de 70%