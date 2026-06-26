# AgroGuard 🌾🤖
> **Sistema Inteligente de Monitoreo Agrícola** > Proyecto desarrollado para el curso de Ingeniería de Requisitos - Universidad Peruana de Ciencias Aplicadas (UPC).

---

## 📝 Descripción del Proyecto
[cite_start]AgroGuard es una solución tecnológica multiplataforma (Web y Móvil) diseñada como un sistema de agricultura de precisión[cite: 1068, 1107]. [cite_start]Su objetivo principal es mitigar la alta tasa de pérdida de cultivos en el sector agroindustrial peruano a través de la detección temprana de plagas, enfermedades y estrés hídrico[cite: 1068, 1127]. 

[cite_start]Mediante la integración de drones, algoritmos de Inteligencia Artificial (Visión Artificial) y análisis de datos de imágenes multiespectrales, la plataforma automatiza las inspecciones agrícolas tradicionales, optimizando los recursos hídricos y reduciendo el uso excesivo de agroquímicos[cite: 1068, 1072, 1140].

## 🚀 Características y Módulos Clave
[cite_start]El sistema se encuentra estructurado en 4 épicas funcionales[cite: 1274]:

1. [cite_start]**Monitoreo Inteligente de Cultivos (EP01):** Planificación de misiones de vuelo con drones y procesamiento de imágenes para la generación automatizada de mapas de calor analíticos (Índice de Vegetación de Diferencia Normalizada - NDVI)[cite: 1110, 1111, 1114, 1274].
2. [cite_start]**Gestión de Alertas Tempranas (EP02):** Identificación automática de plagas mediante un motor de IA y envío inmediato de notificaciones push jerárquicas con geolocalización exacta de las anomalías[cite: 1115, 1117, 1274].
3. [cite_start]**Trabajo de Campo Offline (EP03):** Arquitectura *Offline-First* que permite a los operadores registrar evaluaciones, fichas técnicas y evidencias fotográficas de manera local en zonas rurales sin cobertura de internet[cite: 1119, 1120, 1168, 1274]. [cite_start]Sincronización automática al recuperar la señal[cite: 1121].
4. [cite_start]**Gestión de Reportes Agrícolas (EP04):** Tableros estadísticos de analítica de costos y exportación automatizada de reportes en formato PDF orientados a cumplir con estándares fitosanitarios internacionales (SENASA/Exportación)[cite: 1124, 1274].

## 🛠️ Stack Tecnológico Proyectado
* **Frontend Móvil/Web:** React / React Native o frameworks híbridos optimizados para usabilidad bajo alta radiación solar.
* **Backend:** Arquitectura orientada a servicios (Microservicios) en C++ / Java / Python para el procesamiento de imágenes.
* **Base de Datos:** PostgreSQL para persistencia en la nube y base de datos local embebida (SQLite/Room) para la resiliencia offline.
* **Inteligencia Artificial:** Modelos de visión artificial basados en Convolutional Neural Networks (CNN) entrenados para reconocimiento fitosanitario.

## 📈 Metodología de Desarrollo
[cite_start]El proyecto ha sido conceptualizado bajo el enfoque de **Lean UX** y estructurado iterativamente utilizando marcos de trabajo ágiles (**Scrum**), distribuyendo el Product Backlog a través de Sprints incrementales validados mediante pruebas de aceptación formalizadas en lenguaje Gherkin (BDD)[cite: 1144, 1281, 1282, 1284].

---

## 👥 Autores y Desarrolladores
Este proyecto es desarrollado por el equipo de **AgroGuard Technologies** (Ciclo 2026-01):

* [cite_start]**Barazorda Loayza, Gabriela Sofia** *(Código: U20251G959)* - Ingeniería de Sistemas de Información [cite: 1023, 1076, 1077, 1078]
* [cite_start]**Ceron Diaz, Santiago** *(Código: U202514848)* - Ingeniería de Software [cite: 1023, 1080, 1081, 1082]
* [cite_start]**Cori Cadillo, Eliseo Magiver** *(Código: U202516374)* - Ingeniería de Sistemas de Información [cite: 1024, 1085, 1086, 1087]
* [cite_start]**Gutierrez Gonzales, Andersson Josue** *(Código: U20251F332)* - Ingeniería de Sistemas de Información [cite: 1025, 1090, 1091, 1092]
* [cite_start]**Herrera Chavez, Manuel Elias** *(Código: U202510330)* - Ingeniería de Software [cite: 1025, 1095, 1096, 1097]
* [cite_start]**Muñoz Hidalgo, Yensy Irene** *(Código: U20251G560)* - Ingeniería de Sistemas de Información [cite: 1025, 1100, 1101, 1102]

---
© 2026 AgroGuard Technologies. Todos los derechos reservados.