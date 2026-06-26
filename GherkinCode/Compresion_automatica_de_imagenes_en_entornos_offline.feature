# language: es
Característica: HU020 Compresión automática de imágenes en entornos offline

  Escenario: Reducción drástica del peso de la imagen manteniendo nitidez
    Dado que el técnico toma una fotografía de síntomas de plaga en alta resolución (ej. 8 MB)
    Cuando presiona "Guardar Ficha Local"
    Entonces la aplicación ejecuta un algoritmo interno de compresión que reduce el tamaño del archivo a menos de 500 KB (JPEG optimizado) manteniendo la nitidez necesaria para el análisis de la IA, reduciendo costos de transferencia

  Escenario: Captura con lente obstruido o calidad de imagen insuficiente
    Dado que el técnico intenta registrar una evidencia fotográfica borrosa o con nula iluminación en campo
    Cuando el algoritmo evalúa que la foto no posee los parámetros mínimos de enfoque para la IA
    Entonces el sistema emite una advertencia visual recomendando repetir la captura antes de proceder con el guardado offline