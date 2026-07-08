# language: es
Característica: HU001 Visualizar mapa NDVI

  Escenario: Navegación e interacción con el zoom en el mapa interactivo
    Dado que el Ingeniero Agrónomo visualiza el mapa NDVI en la interfaz móvil
    Cuando interactúa presionado el control táctil de escala (Input: click_boton_zoom = "+")
    Entonces la vista del mapa reajusta su relación de escala de manera fluida (Output: float_escala_mapa = 2.0)
    Y mantiene la delimitación vectorial georreferenciada intacta sobre la pantalla

  Escenario: Selección de una parcela recién registrada sin capas procesadas
    Dado que el Ingeniero Agrónomo ingresa al menú de selección de terrenos
    Cuando escoge un lote que no posee misiones de drones finalizadas (Input: string_id_lote = "Lote_Nuevo_04")
    Entonces la plataforma renderiza el plano satelital base por defecto
    Y despliega una notificación restrictiva en la UI (Output: string_mensaje = "Sin capas NDVI disponibles para este lote")
