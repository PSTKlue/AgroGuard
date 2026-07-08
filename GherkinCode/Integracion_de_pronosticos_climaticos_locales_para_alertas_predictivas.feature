# language: es
Característica: HU015 Integración de pronósticos climáticos locales para alertas predictivas

  Escenario: Elevación automática a nivel de riesgo predictivo por alta humedad ambiental
    Dado que una parcela registra estrés leve en el mapa NDVI y el API meteorológico reporta lluvias inminentes
    Cuando el algoritmo de la IA procesa el cruce de las variables ambientales (Inputs: string_estado_ndvi = "Amarillo", float_probabilidad_lluvia = 0.90, float_humedad = 92.5)
    Entonces el sistema cambia proactivamente la etiqueta de la parcela en el dashboard central
    Y despliega una sugerencia preventiva en la pantalla (Output: string_etiqueta_riesgo = "Riesgo de Tizón", string_accion_sugerida = "Aplicar tratamiento fungicida preventivo")

  Escenario: Mantenimiento del nivel de riesgo estándar ante condiciones climáticas secas
    Dado que un lote agrícola presenta un nivel de estrés leve amarillo pero el API climático reporta estabilidad atmosférica
    Cuando el motor predictivo ejecuta el análisis de riesgo rutinario (Inputs: string_estado_ndvi = "Amarillo", float_probabilidad_lluvia = 0.05, float_humedad = 45.0)
    Entonces la plataforma mantiene el estado de la alerta sin modificaciones predictivas
    Y actualiza la bitácora ordinaria en el servidor (Output: string_etiqueta_riesgo = "Estrés Leve Ordinario", bool_cambio_estado = false)
