# language: es
Característica: HU001 Visualizar mapa NDVI

  Escenario: Navegación e interacción con el zoom en el mapa
    Dado que el Ingeniero Agrónomo se encuentra en la pantalla del mapa NDVI que cargó correctamente en su pantalla
    Cuando presiona los controles visuales de "+" o "-" en la esquina del mapa
    Entonces la vista del mapa debe reajustar su escala de manera fluida y sin pixelarse, manteniendo la delimitación georreferenciada de las zonas del cultivo

  Escenario: Selección de un lote sin datos de mapa NDVI generados
    Dado que el Ingeniero Agrónomo se encuentra en el panel principal de cultivos
    Cuando selecciona un lote recién registrado que aún no cuenta con misiones de vuelo procesadas
    Entonces el sistema muestra un mapa base satelital estándar y despliega un mensaje indicando que no hay capas de salud disponibles para esa parcela