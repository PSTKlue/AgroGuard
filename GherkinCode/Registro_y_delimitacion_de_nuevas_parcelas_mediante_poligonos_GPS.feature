# language: es
Característica: HU011 Registro y delimitación de nuevas parcelas mediante polígonos GPS

  Escenario: Cálculo geométrico automático de hectáreas mediante puntos georreferenciados
    Dado que el Ingeniero Agrónomo interactúa con la interfaz cartográfica de AgroGuard
    Cuando traza los puntos vectoriales perimetrales y cierra la figura geométrica (Input: array_coordenadas_gps = [p1, p2, p3, p4])
    Entonces el backend calcula de forma matemática el área superficial encerrada en el polígono
    Y registra el nuevo lote mapeado en el sistema (Output: float_hectareas_calculadas = 12.5, int_id_lote_nuevo = 501)

  Escenario: Delimitación de polígonos geográficos que se superponen con parcelas existentes
    Dado que el Ingeniero Agrónomo está dibujando los linderos de una nueva parcela sobre el plano satelital
    Cuando cierra un polígono cuyos vectores interceptan un terreno previamente registrado (Input: array_coordenadas_gps = [coordenadas_colision])
    Entonces el algoritmo de validación topográfica del sistema rechaza la solicitud de guardado por conflicto de propiedad
    Y resalta el área geométrica de colisión en color naranja brillante en la pantalla (Output: string_status_mapa = "Superposición Detectada")
