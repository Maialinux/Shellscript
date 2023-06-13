#!/bin/bash

dias_atras=15
data=`date -d "-${dias_atras} -days"  +"%Y_%m_%d"`
echo -e "\nDia a ser deletado é : $data \n"
arquivo=`find . |grep $data`
echo -e "Arquivo filtrado: $arquivo arquivo já removido\n\n"
rm -rf $arquivo
