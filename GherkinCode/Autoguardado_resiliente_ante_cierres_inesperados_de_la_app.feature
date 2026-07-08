# language: es
Característica: HU021 Autoguardado resiliente ante cierres inesperados de la app

  Escenario: Recuperación automática del borrador temporal tras una falla por falta de memoria RAM
    Dado que el operador se encuentra digitando un reporte extenso y el sistema operativo cierra la aplicación de forma abrupta
    Cuando el usuario vuelve a abrir AgroGuard en su celular (Input: launch_app = true)
    Entonces el ciclo de vida de la aplicación detecta el estado intermedio de persistencia temporal en caché
    Y restaura el formulario móvil con los textos e imágenes recuperados de forma exacta (Output: string_recuperado = "Manchas amarillas...", bool_formulario_restaurado = true)

  Escenario: Limpieza intencional del borrador almacenado al iniciar un nuevo flujo desde cero
    Dado que el sistema móvil despliega un cuadro de diálogo ofreciendo restaurar un reporte previo inconcluso
    Cuando el operador presiona explícitamente el botón de cancelación de borrador (Input: click_boton_nuevo_reporte = true)
    Entonces la aplicación ejecuta un borrado de las variables del espacio de caché temporal
    Y renderiza la pantalla del formulario completamente vacía para un nuevo llenado (Output: string_sintomas = "", bool_cache_limpia = true)
