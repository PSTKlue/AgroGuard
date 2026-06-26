# language: es
Característica: HU023 Dashboard de costos operativos y agroquímicos

  Escenario: Visualización del ROI y ahorro económico en el entorno web
    Dado que el gerente inicia sesión con su rol administrativo en el entorno web
    Cuando accede al panel de "Métricas de Negocio"
    Entonces el sistema calcula la diferencia financiera basándose en los tratamientos registrados y despliega un gráfico interactivo mostrando el ahorro porcentual en insumos químicos (con el objetivo de reducción del 15%)

  Escenario: Consulta de estadísticas en un fundo nuevo sin data histórica
    Dado que un administrador corporativo abre el dashboard de analítica de un fundo recién integrado
    Cuando el sistema detecta que no existen registros de campañas previas para comparar los costos
    Entonces renderiza la pantalla del panel mostrando marcadores de posición en cero e incluye una guía instructiva sobre cómo empezar a alimentar los datos