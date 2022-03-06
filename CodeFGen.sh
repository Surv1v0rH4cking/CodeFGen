#!/bin/bash

echo "
░█████╗░░█████╗░██████╗░███████╗
██╔══██╗██╔══██╗██╔══██╗██╔════╝
██║░░╚═╝██║░░██║██║░░██║█████╗░░
██║░░██╗██║░░██║██║░░██║██╔══╝░░
╚█████╔╝╚█████╔╝██████╔╝███████╗
░╚════╝░░╚════╝░╚═════╝░╚══════╝

███████╗░██████╗░███████╗███╗░░██╗
██╔════╝██╔════╝░██╔════╝████╗░██║
█████╗░░██║░░██╗░█████╗░░██╔██╗██║
██╔══╝░░██║░░╚██╗██╔══╝░░██║╚████║
██║░░░░░╚██████╔╝███████╗██║░╚███║
╚═╝░░░░░░╚═════╝░╚══════╝╚═╝░░╚══╝
By Surv1v0r
"

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Nota: Solo se puede poner un nombre y estará en el
siguiente formato: ejemplo01, ejemplo02, etc."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"

echo -n "Escribe el nombre que tendran los archivos: "
read respuesta
echo " "

if [ $respuesta == $respuesta ]; then 
    echo -n "Que formato tendrán los archivos: "
    read respuesta2
    echo " "
fi

if [ $respuesta2 == $respuesta2 ]; then
    echo -n "Cuantos archivos serán: "
    read respuesta3
    echo " "
fi

for (( i = 0; i <= $respuesta3; i++ )); do 
    name="$respuesta$i.$respuesta2"
if [ $i -lt 10 ]; then
    name="$respuesta$i.$respuesta2"
fi 
touch $name
echo "$name creado exitosamente" | tr -s $respuesta3
done

chmod +x *

