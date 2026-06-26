# language: es
Característica: HU004 Registrar datos offline

  Escenario: Almacenamiento local en zona remota
    Dado que el Operador de Campo está registrando observaciones en una zona remota sin señal de internet
    Cuando hace clic en el botón de guardar
    Entonces todos los datos de la observación deben almacenarse localmente en el almacenamiento interno del dispositivo para evitar la pérdida de información

  Escenario: Intento de guardado offline con formulario incompleto
    Dado que el Operador de Campo se encuentra sin conectividad en medio de la parcela
    Cuando intenta presionar "Guardar Offline" omitiendo el campo obligatorio de la descripción de síntomas
    Entonces la aplicación bloquea la acción, resalta el campo vacío en rojo y le permite guardar localmente solo tras completar la información mínima requerida