# AgroGuard 🌾🤖
> **Sistema Inteligente de Monitoreo Agrícola** > Proyecto desarrollado para el curso de Ingeniería de Requisitos - Universidad Peruana de Ciencias Aplicadas (UPC).

---

## 📝 Descripción del Proyecto
AgroGuard es una solución tecnológica multiplataforma (Web y Móvil) diseñada como un sistema de agricultura de precisión.Su objetivo principal es mitigar la alta tasa de pérdida de cultivos en el sector agroindustrial peruano a través de la detección temprana de plagas, enfermedades y estrés hídrico. 

Mediante la integración de drones, algoritmos de Inteligencia Artificial (Visión Artificial) y análisis de datos de imágenes multiespectrales, la plataforma automatiza las inspecciones agrícolas tradicionales, optimizando los recursos hídricos y reduciendo el uso excesivo de agroquímicos.

## 🚀 Características y Módulos Clave
El sistema se encuentra estructurado en 4 épicas funcionales:

1.**Monitoreo Inteligente de Cultivos (EP01):** Planificación de misiones de vuelo con drones y procesamiento de imágenes para la generación automatizada de mapas de calor analíticos (Índice de Vegetación de Diferencia Normalizada - NDVI).
2. **Gestión de Alertas Tempranas (EP02):** Identificación automática de plagas mediante un motor de IA y envío inmediato de notificaciones push jerárquicas con geolocalización exacta de las anomalías[.
3. **Trabajo de Campo Offline (EP03):** Arquitectura *Offline-First* que permite a los operadores registrar evaluaciones, fichas técnicas y evidencias fotográficas de manera local en zonas rurales sin cobertura de internet. Sincronización automática al recuperar la señal.
4. **Gestión de Reportes Agrícolas (EP04):** Tableros estadísticos de analítica de costos y exportación automatizada de reportes en formato PDF orientados a cumplir con estándares fitosanitarios internacionales (SENASA/Exportación).

## 🛠️ Stack Tecnológico Proyectado
* **Frontend Móvil/Web:** React / React Native o frameworks híbridos optimizados para usabilidad bajo alta radiación solar.
* **Backend:** Arquitectura orientada a servicios (Microservicios) en C++ / Java / Python para el procesamiento de imágenes.
* **Base de Datos:** PostgreSQL para persistencia en la nube y base de datos local embebida (SQLite/Room) para la resiliencia offline.
* **Inteligencia Artificial:** Modelos de visión artificial basados en Convolutional Neural Networks (CNN) entrenados para reconocimiento fitosanitario.

## 📈 Metodología de Desarrollo
El proyecto ha sido conceptualizado bajo el enfoque de **Lean UX** y estructurado iterativamente utilizando marcos de trabajo ágiles (**Scrum**), distribuyendo el Product Backlog a través de Sprints incrementales validados mediante pruebas de aceptación formalizadas en lenguaje Gherkin (BDD).

---

## 👥 Autores y Desarrolladores
Este proyecto es desarrollado por el equipo de **AgroGuard Technologies** (Ciclo 2026-01):

**Barazorda Loayza, Gabriela Sofia** *(Código: U20251G959)* - Ingeniería de Sistemas de Información 

**Ceron Diaz, Santiago** *(Código: U202514848)* - Ingeniería de Software

**Cori Cadillo, Eliseo Magiver** *(Código: U202516374)* - Ingeniería de Sistemas de Información

**Gutierrez Gonzales, Andersson Josue** *(Código: U20251F332)* - Ingeniería de Sistemas de Información

**Herrera Chavez, Manuel Elias** *(Código: U202510330)* - Ingeniería de Software 

**Muñoz Hidalgo, Yensy Irene** *(Código: U20251G560)* - Ingeniería de Sistemas de Información

---
© 2026 AgroGuard Technologies. Todos los derechos reservados.
