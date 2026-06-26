# language: es
Característica: HU011 Registro y delimitación de nuevas parcelas mediante polígonos GPS

  Escenario: Cálculo automático de hectáreas mediante marcado de puntos
    Dado que el Ingeniero Agrónomo utiliza la herramienta de mapeo y delimitación de fundos
    Cuando marca los puntos cardinales sobre el mapa y cierra el polígono
    Entonces el sistema debe calcular automáticamente la extensión en hectáreas y asignar un identificador único al nuevo lote en el sistema

  Escenario: Delimitación de polígonos que se superponen con terrenos existentes
    Dado que el Ingeniero Agrónomo está dibujando los límites de una nueva parcela en el mapa satelital
    Cuando cierra un polígono cuyos bordes invaden o se superponen con un lote previamente registrado en el sistema
    Entonces la aplicación emite una alerta de conflicto geográfico, resalta la zona de colisión en color naranja y solicita ajustar los puntos antes de guardar el registro