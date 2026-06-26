# language: es
Característica: HU015 Integración de pronósticos climáticos locales para alertas predictivas

  Escenario: Activación de alerta predictiva de hongos por alta humedad
    Dado que el sistema registra una zona con estrés leve (amarillo) y el API meteorológico predice un 90% de humedad para el día siguiente
    Cuando la IA corre el modelo predictivo
    Entonces cambia proactivamente la etiqueta a "Riesgo de Tizón" y sugiere aplicar tratamientos preventivos antes de las lluvias

  Escenario: Monitoreo regular ante condiciones climáticas estables y secas
    Dado que una parcela presenta estrés leve amarillo pero el API meteorológico predice un clima seco sin precipitaciones
    Cuando la IA procesa las variables ambientales de la zona
    Entonces mantiene el nivel de la alerta sin modificaciones predictivas y registra el estado ordinario en la bitácora