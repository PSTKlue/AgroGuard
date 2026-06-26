# language: es
Característica: HU010 Carga y procesamiento de imágenes de drones (Consulta de Catálogo)

  Escenario: Búsqueda exitosa y despliegue de ficha técnica
    Dado que el Evaluador de Campo abre el buscador del catálogo desde la app móvil
    Cuando escribe una palabra clave para especificar la plaga
    Entonces el sistema debe desplegar la ficha técnica, mostrando fotos de referencia, síntomas comunes, su ciclo fenológico óptimo y métodos de prevención biológica

  Escenario: Búsqueda de una plaga o término inexistente en el catálogo
    Dado que el Evaluador de Campo ingresa un término erróneo o una plaga no catalogada en la barra de búsqueda
    Cuando ejecuta la consulta presionando intro
    Entonces la aplicación muestra una pantalla con el mensaje "No se encontraron resultados" y le ofrece un botón directo para reportar la muestra como una nueva anomalía desconocida