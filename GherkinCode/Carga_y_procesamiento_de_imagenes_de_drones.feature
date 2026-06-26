# language: es
Característica: HU007 Carga y procesamiento de imágenes de drones

  Escenario: Procesamiento exitoso de imágenes multiespectrales
    Dado que el Operador de Drones ha finalizado una misión y se encuentra en el panel de carga de archivos
    Cuando selecciona un lote de imágenes en forma y presiona el botón "Iniciar Procesamiento"
    Entonces el sistema debe validar los metadatos de geolocalización de las fotos y mostrar en tiempo real una barra de progreso del renderizado del mapa NDVI

  Escenario: Carga de archivos con formato o extensión corrupta
    Dado que el Operador de Drones intenta subir un lote de archivos comprimidos dañado o en una extensión no válida (ej. .MP4)
    Cuando presiona el botón de procesamiento en la plataforma web
    Entonces el backend rechaza la carga inmediatamente, limpia la cola de archivos y muestra un listado de los formatos permitidos (GeoTIFF/JPG de alta resolución)