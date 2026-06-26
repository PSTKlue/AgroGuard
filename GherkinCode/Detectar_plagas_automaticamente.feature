# language: es
Característica: HU002 Detectar plagas automáticamente

  Escenario: Mostrar resultado con ubicación y confianza
    Dado que el Ingeniero Agrónomo toma y sube una foto de una planta afectada en campo
    Cuando la Inteligencia Artificial termina de procesar la imagen
    Entonces el sistema debe mostrar en pantalla las coordenadas geográficas exactas de la toma y el porcentaje de confianza del diagnóstico

  Escenario: Carga de imagen con calidad insuficiente para el diagnóstico
    Dado que el Ingeniero Agrónomo sube una fotografía del cultivo que se encuentra demasiado borrosa u oscura
    Cuando el modelo de Inteligencia Artificial intenta analizar los patrones fitosanitarios
    Entonces el sistema interrumpe el análisis, cambia el estado a "Requiere Nueva Captura" y muestra una sugerencia técnica para mejorar la toma