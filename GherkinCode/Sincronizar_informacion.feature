# language: es
Característica: HU002 Detectar plagas automáticamente

  Escenario: Mostrar resultado analítico con ubicación y porcentaje de certeza
    Dado que el Ingeniero Agrónomo captura y sube una fotografía nítida de un cultivo afectado
    Cuando la Inteligencia Artificial ejecuta el procesamiento morfológico (Input: archivo_imagen = "evidencia_hoja.jpg")
    Entonces el sistema registra las coordenadas espaciales exactas del hallazgo (Output: string_coordenadas = "-12.0431, -77.0282")
    Y despliega la tarjeta analítica con el nivel de precisión (Output: string_plaga = "Gusano Cogollero", float_confianza = 0.94)

  Escenario: Carga de evidencia fotográfica con calidad o iluminación insuficiente
    Dado que el Ingeniero Agrónomo se encuentra en una zona de baja luz solar
    Cuando intenta subir una fotografía borrosa al motor de análisis (Input: archivo_imagen = "evidencia_oscura.png")
    Entonces el modelo de Inteligencia Artificial interrumpe la ejecución del análisis fitosanitarias
    Y actualiza el estado visual del reporte en la interfaz móvil (Output: string_estado = "Requiere Nueva Captura")
