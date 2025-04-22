#!/bin/bash

if [ "$#" -ne 1 ]; then
            echo "Uso: $0 <palabra>"
                exit 1
fi

palabra="$1"
url="https://www.marcado-ce.com"
fichero="pagina.html"

curl -s "$url" -o "$fichero"

if [ $? -ne 0 ]; then
  echo "Error al descargar la página."
                                    exit 2
fi

if grep -qi "$palabra" "$fichero"; then
        num=`grep -o $palabra $fichero | wc -l`;
        lin=`grep -n $palabra $fichero |cut -d: -f1 | head -1`;
          echo "La palabra \"$palabra\" aparece $num veces"
          echo "Aparece por primera vez en la línea $lin."


else
         echo "No se ha encontrado la palabra \"$palabra\""
fi
