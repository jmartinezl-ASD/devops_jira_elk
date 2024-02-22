#importamos biblioteca
import yaml
import sys

#creamos el diccionario
datos = []

# variable para comparar cantidad de datos ingresados
cantida_a = len(sys.argv) - 1

#controlar variables
if cantida_a > 2:
    print("Error: estas ingresando mas variables de las permitidas")
    sys.exit(1)
elif cantida_a < 2:
    print("Error: estas ingresando menos variables de las permitidas")
    sys.exit(1)
else: 
    # variables ingresadas desde consola
    entrada = sys.argv[1]
    salida  = sys.argv[2]

    #leemos achivo
    with open(entrada, 'r', encoding='latin-1') as file:
        # Leer las líneas del archivo
        datos_documento = file.readlines()

    # Recorrer cada línea del archivo
    for line in datos_documento:
        # Datos diccionario
        divipol             = line[0:9    ].strip()
        codigo_departamento = line[0:2    ].strip()
        codigo_zona         = line[5:7    ].strip()
        nombre_departamento = line[9:21   ].strip()
        nombre_municipio    = line[21:51  ].strip()
        nombre_puesto       = line[51:91  ].strip()
        cantidad_mesas      = line[108:114].strip()

        #creamos un diccionario con la lista line por linea
        datos_t = {divipol : f'{nombre_departamento}|{nombre_municipio}|{codigo_zona}|{nombre_puesto}|{cantidad_mesas}'}

        # Agregar el diccionario a la lista de datos
        datos.append(datos_t)
            
    with open(salida, 'w', encoding='utf-8') as f:
        yaml.dump(datos, f, default_flow_style=False, allow_unicode=True, default_style="'") 