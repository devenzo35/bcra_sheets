# Seguimiento de Inflación Argentina con Python y Google Sheets

Este proyecto automatiza la recolección mensual de los datos de inflación publicados por la API del Banco Central de la República Argentina, los procesa y los exporta directamente a una hoja de cálculo de Google Sheets para facilitar su análisis y visualización.

## Objetivo

Tener una herramienta que permita:

* Obtener los datos mensuales de inflación de forma automática desde la API del BCRA.
* Calcular la inflación acumulada.
* Exportar los datos procesados a Google Sheets.
* Evitar tareas manuales repetitivas como descargar y copiar datos desde Excel.

## Funcionalidades

* Conexión directa con la API pública del BCRA.
* Procesamiento de los datos con `pandas`.
* Autenticación con Google a través de cuentas de servicio.
* Exportación automática a una hoja de cálculo específica en Google Sheets.
* Registro local en Excel si se desea conservar una copia offline.

## Tecnologías utilizadas

* Python 3.12
* pandas
* numpy
* requests
* gspread
* gspread\_dataframe
* openpyxl
* Google Cloud Service Account (para autenticar el acceso a Sheets)

## Estructura del proyecto

```
infla_script/
├── infla.py                 # Script principal
├── credentials.json         # Clave de la cuenta de servicio (no debe subirse al repositorio)
├── inflacion_mensual.xlsx   # Archivo de salida local (opcional)
└── requirements.txt         # Lista de dependencias
```

## Configuración del entorno

1. Crear un entorno virtual:

   ```bash
   python -m venv infla_env
   source infla_env/bin/activate  # Linux/macOS
   infla_env\Scripts\activate     # Windows
   ```

2. Instalar dependencias:

   ```bash
   pip install -r requirements.txt
   ```

3. Crear una cuenta de servicio en Google Cloud y descargar la clave en formato JSON.

4. Compartir el documento de Google Sheets con permisos de editor al email de la cuenta de servicio.

5. Agregar el archivo `credentials.json` en la raíz del proyecto o crear una variable de entorno y asegurar que no se suba a GitHub.

## Uso

Ejecutar el script:

```bash
python infla.py
```

Esto:

* Llama a la API del BCRA.
* Procesa los datos de inflación mensual.
* Calcula la inflación acumulada.
* Exporta todo a un Google Sheets predefinido.

