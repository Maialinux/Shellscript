#!/bin/bash

qtd=`ls teste-log/ | wc -l`

if [ $qtd -gt 15 ]
  then
    echo -e "Ultrapassou limite de 15 arquivos. Total: $qtd"
  else
    echo -e "Está tudo normal. Total de arquivos: $qtd"
fi

#for ((i=1;i<=100;i++)); do
#  if [ $i -lt 10 ]
#    then
#      data=`date +"0$i-%m-%Y"`
#      echo -e "Backup realizado em $data" >> log-$data.txt
#  else
#      data=`date +"$i-%m-%Y"` 
#      echo -e "Backup realizado em $data" >> log-$data.txt 
#  fi
#done
