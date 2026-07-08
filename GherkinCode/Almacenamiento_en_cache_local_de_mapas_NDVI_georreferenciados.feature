# language: es
Característica: HU017 Almacenamiento en caché local de mapas NDVI georreferenciados

  Escenario: Descarga e indexación exitosa del mapa NDVI pesado en el almacenamiento interno del smartphone
    Dado que el Operador de Campo se encuentra conectado al Wi-Fi del campamento central
    Cuando abre los detalles gráficos de una parcela y confirma (Inputs: int_id_lote = 301, click_boton_descarga = true)
    Entonces la aplicación descarga las capas vectoriales de color georreferenciadas de la nube
    Y las almacena en la estructura de caché interna del teléfono móvil para su uso sin red (Output: archivo_cache_mapa = "mapa_lote_301.dat", bool_disponibilidad_offline = true)

  Escenario: Interrupción del proceso de descarga offline por almacenamiento interno insuficiente
    Dado que el Operador de Campo solicita la descarga de un mapa NDVI pesado de alta resolución
    Cuando la memoria interna libre detectada en el almacenamiento del dispositivo es muy baja (Input: float_espacio_libre_disco = 12.5)
    Entonces la aplicación móvil aborta el proceso de descarga de forma controlada
    Y notifica al usuario la restricción de almacenamiento mediante un cuadro de diálogo (Output: string_error_disco = "Almacenamiento insuficiente. Requiere al menos 50MB libres")
