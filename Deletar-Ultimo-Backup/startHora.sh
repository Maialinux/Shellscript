#!/bin/bash

for ((i=1;i<=30;i++)); do
  if [ $i -lt 10 ]
    then
      data=`date +"%Y_%m_0$i"`
      echo -e "Backup realizado em $data" >> CorporeRM_backup_${data}_010001.txt
  else
      data=`date +"%Y_%m_$i"`
      echo -e "Backup realizado em $data" >> CorporeRM_backup_${data}_010001.txt
  fi
done
