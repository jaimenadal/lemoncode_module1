#!/bin/bash
if [ "$#" -ne 2 ]; then
        echo "Se necesitan únicamente dos parámetros para ejecutar este script"
      exit 1
fi

url="$1"
palabra="$2"
fichero="pagina.html"

curl -s "$url" -o "$fichero"


if grep -qi "$palabra" "$fichero"; then
       num=`grep -o $palabra $fichero | wc -l`;
       lin=`grep -n $palabra $fichero |cut -d: -f1 | head -1`;
        if [ "$num" -eq 1 ]; then
            echo "La palabra \"$palabra\" aparece $num vez"
             echo "Aparece únicamente en la línea $lin."
         else

       echo "La palabra \"$palabra\" aparece $num veces"
           echo "Aparece por primera vez en la línea $lin."
        fi
 else
      echo "No se ha encontrado la palabra \"$palabra\""
fi
