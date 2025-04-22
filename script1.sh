#/bin/bash
if [ "$#" -ne 1 ]; then
   echo "Uso: $0 <palabra>"
   exit 1
fi

param="$1"

if [ -d foo/ ]; then

echo "El directorio foo ya está creado"

else
mkdir foo/
mkdir -p foo/dummy foo/empty
cd foo/dummy
echo 'Me encanta la bash!!' > file1.txt
touch file2.txt
cat file1.txt > file2.txt
mv file2.txt ../empty

fi



 if [ -z "$param" ]; then

          param="Que me gusta la bash!!!!"
          echo $param > file1.txt
          cat file1.txt
 else

         echo $param > file1.txt
         cat file1.txt
 fi
