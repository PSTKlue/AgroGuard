# language: es
Característica: HU004 Registrar datos offline

  Escenario: Almacenamiento local exitoso de fichas técnicas en zona remota sin conectividad
    Dado que el Operador de Campo completa el formulario fitosanitario sin señal de red móvil
    Cuando introduce los datos del hallazgo y presiona "Guardar" (Inputs: int_id_lote = 102, string_sintomas = "Hojas secas", archivo_foto)
    Entonces la aplicación realiza un volcado de datos en la base de datos interna embebida
    Y actualiza los componentes dinámicos de la UI móvil (Output: estado_db_local = "Guardado", int_contador_cola = +1)

  Escenario: Intento de guardado offline omitiendo campos obligatorios del formulario
    Dado que el Operador de Campo interactúa con la aplicación móvil en modo desconectado
    Cuando presiona el botón "Guardar Offline" omitiendo la descripción (Input: string_sintomas = "")
    Entonces la aplicación bloquea la persistencia de datos local en la base SQLite
    Y resalta el cuadro de texto vacío con un borde rojo de advertencia (Output: string_error = "Campo obligatorio vacío")
