#!/bin/bash

crontab -e

0 8 2 * * /home/devenzo35/dev/infla_script/infla.py


echo "Se actualizaron los datos de inflacion"