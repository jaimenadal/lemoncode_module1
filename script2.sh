#!/bin/bash

if [ "$#" -ne 2 ]; then
            echo "Uso: $0 <URL> <palabra_a_buscar>"
                exit 1
fi

url="$1"
palabra="$2"
fichero="pagina_descargada.html"


echo "Descargando $url..."
curl -s "$url" -o "$fichero"


if [ $? -ne 0 ]; then
                    echo "Error al descargar la página."
                                    exit 2
fi


echo "Buscando la palabra '$palabra' en la web descargada."
if grep -qi "$palabra" "$fichero"; then
          echo "La palabra '$palabra' fue encontrada en el fichero."
else
         echo "La palabra '$palabra' no fue encontrada en el fichero."
fi
~
~
