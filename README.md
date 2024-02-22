# Generación de diccionarios de datos
## Procesamiento de archivos txt
Procesar archivos de texto (.txt) para la generación de archivos YAML (.yml).

### Pre-requisitos
| Tecnología | Versión |
| -----------|---------|
| Python     | 3.11.3  |
| PyYAML     | 6.0     |
#### Instalacion de python
Para ejecutar el script, se utiliza Python. Para realizar la instalación acceder siguiente enlace

[Descargar Python](https://www.python.org/downloads/)

#### Instalacion de PyYAML
- Se requiere realizar la instalación del paquete PyYAML. Ejecutar el siguiente código.
```
pip install pyyaml
``` 
En el código, se utiliza la siguiente línea de código para permitir su ejecución
```
import yaml
```

### Ejecución del proyecto en ambiente local
1. Descargar el repositorio utilizando el comando de git
```
git clone git@github.com:Grupo-ASD/devops_jira_elk.git
```

2. Digitar el comando a ejecutar
A continuación, se presenta un ejemplo que ilustra cómo realizar esta tarea
```
& C:/Users/jgarcia/AppData/Local/Programs/Python/Python311/python.exe c:/Users/jgarcia/Documents/ASD/Juanma/devops_jira_elk/logstash/diccionario/python/procesartxt.py 'logstash\diccionario\generarDiccionario\DIVIPOL_20220509_103027_01.txt' 'logstash\diccionario\generarDiccionario\diccionariodedatos.yml'
```
Antes de ejecutar el comando mencionado, es importante que la persona sea consciente de que debe adaptarlo. A continuación, se ofrece una explicación sobre cómo se compone el código anterior:

- La ubicación de instalación de Python en su equipo: 
```
C:/Users/jgarcia/AppData/Local/Programs/Python/Python311/python.exe
```
- La ubicación de donde se encuentra guardado el script para ejecutar depende del contexto:
```
c:/Users/jgarcia/Documents/ASD/Juanma/devops_jira_elk/logstash/diccionario/python/procesartxt.py
```
- La ubicación de donde está guardado el archivo TXT con información de DIVIPOL:
```
'logstash\diccionario\generarDiccionario\DIVIPOL_20220509_103027_01.txt'
```
- La ruta donde desea almacenar el archivo YAML resultante :
```
'logstash\diccionario\generarDiccionario\diccionariodedatos.yml'
```