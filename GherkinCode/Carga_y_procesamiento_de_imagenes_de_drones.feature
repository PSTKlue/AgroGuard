# language: es
Característica: HU007 Carga y procesamiento de imágenes de drones

  Escenario: Procesamiento exitoso de imágenes multiespectrales para renderizado
    Dado que el Operador de Drones ingresa al panel de carga de la plataforma web
    Cuando selecciona un paquete de imágenes válidas y confirma (Input: array_imagenes_tiff, string_lote = "San_Pedro")
    Entonces el backend valida los metadatos georreferenciados de los archivos GeoTIFF
    Y activa la barra de progreso de renderizado de la interfaz (Output: float_progreso_procesamiento = 100.0)

  Escenario: Carga de archivos con extensiones inválidas o corruptas
    Dado que el Operador de Drones intenta subir un archivo multimedia no apto para mapas NDVI
    Cuando confirma la carga del archivo incorrecto (Input: archivo_invalido = "video_vuelo.mp4")
    Entonces el backend de AgroGuard rechaza la inserción en el búfer de procesamiento
    Y emite un mensaje de restricción textual en pantalla (Output: string_error = "Formato no compatible. Suba archivos GeoTIFF o JPG")
