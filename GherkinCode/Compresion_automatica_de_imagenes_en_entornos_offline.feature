# language: es
Característica: HU020 Compresión automática de imágenes en entornos offline

  Escenario: Reducción del tamaño binario de la imagen manteniendo los detalles de nitidez requeridos por la IA
    Dado que el Operador de Campo captura una fotografía de síntomas vegetales en alta resolución
    Cuando confirma el guardado local del reporte en la aplicación móvil (Input: archivo_foto_cruda = "plaga_8MB.jpg")
    Entonces el submódulo de compresión de la app ejecuta un remuestreo local del mapa de bits
    Y almacena el archivo binario optimizado en la base de datos interna SQLite (Output: archivo_foto_cache = "plaga_compressed_450KB.jpg", bool_nitidez_validada = true)

  Escenario: Captura de baja nitidez o enfoque insuficiente rechazada por el algoritmo local
    Dado que el Operador de Campo intenta tomar una fotografía de evidencia fitosanitaria
    Cuando el lente de la cámara se encuentra obstruido o desenfocado (Input: archivo_foto_cruda = "foto_borrosa_2MB.jpg")
    Entonces el algoritmo local de control de calidad intercepta el flujo antes del almacenamiento en disco
    Y bloquea el guardado del formulario emitiendo una advertencia técnica en pantalla (Output: string_error_captura = "Imagen desenfocada. Limpie el lente y repita la toma")
