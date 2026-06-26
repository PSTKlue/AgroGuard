# language: es
Característica: HU021 Autoguardado resiliente ante cierres inesperados de la app

  Escenario: Recuperación de datos tras caída del sistema por falta de RAM
    Dado que el operador está llenando la descripción de síntomas bajo el sol y la app se cierra por falta de memoria RAM en el dispositivo
    Cuando vuelve a abrir la herramienta "Reportar Anomalía"
    Entonces el sistema detecta el estado anterior y recupera los textos y fotos previamente adjuntados, permitiendo continuar desde donde se quedó

  Escenario: Descarte voluntario del borrador guardado automáticamente
    Dado que el usuario vuelve a abrir el formulario y el sistema le ofrece recuperar su borrador previo
    Cuando el usuario presiona explícitamente el botón "Iniciar Nuevo Reporte"
    Entonces la aplicación limpia de forma definitiva el almacenamiento temporal en caché y despliega los campos completamente vacíos