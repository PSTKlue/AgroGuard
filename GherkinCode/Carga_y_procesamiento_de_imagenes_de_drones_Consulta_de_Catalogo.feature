# language: es
Característica: HU010 Consulta de Catálogo Fitosanitario

  Escenario: Búsqueda de términos clave y despliegue indexado de la ficha técnica
    Dado que el Evaluador de Campo abre el buscador interno de la enciclopedia fitosanitaria de AgroGuard
    Cuando escribe el nombre de una patología agrícola (Input: string_busqueda = "Tizón Temprano")
    Entonces la aplicación ejecuta un filtrado en la base de datos indexada local
    Y despliega el objeto de datos correspondiente con sus características estructuradas (Output: ficha_tecnica_objeto = [fotos_ref, sintomas, tratamientos_sugeridos])

  Escenario: Consulta de un término inexistente o con caracteres especiales inválidos
    Dado que el Evaluador de Campo introduce una palabra errónea o un código inexistente en la barra de búsqueda
    Cuando ejecuta la consulta presionando intro (Input: string_busqueda = "Plaga_Inexistente_XYZ")
    Entonces el frontend intercepta el resultado vacío de la base de datos
    Y muestra un marcador gráfico dinámico en la interfaz móvil (Output: ui_estado = "No se encontraron resultados")
