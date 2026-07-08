# language: es
Característica: HU023 Dashboard de costos operativos y agroquímicos

  Escenario: Cálculo en tiempo real del ROI y comparativa de ahorro económico en agroquímicos
    Dado que el Gerente de Operaciones Agrícolas inicia sesión con su rol administrativo en el entorno web
    Cuando ingresa a la sección de indicadores clave de negocio (Input: click_menu_analitica = "Costos e Insumos")
    Entonces el backend de AgroGuard procesa las variables de los tratamientos químicos históricos frente a los actuales
    Y renderiza en la interfaz gráfica un gráfico de barras interactivo con el ahorro porcentual de insumos (Output: float_porcentaje_ahorro = 16.5, ui_grafico_render = "Grafico_ROI_Insumos")

  Escenario: Consulta analítica en un fundo de integración reciente sin registros históricos de campañas
    Dado que un Administrador Corporativo abre el dashboard de analítica financiera de un fundo recién integrado al sistema
    Cuando la plataforma ejecuta la consulta SQL y detecta que la base de datos histórica no posee registros de campañas previas (Input: registros_historicos = 0)
    Entonces el sistema intercepta los valores nulos, inicializa los marcadores gráficos en cero
    Y muestra una guía interactiva sobre cómo ingresar los datos del inventario inicial (Output: ui_modo_dashboard = "Fundo_Nuevo_Modo_Guia")
