#!/bin/bash
wget --post-data="passwd-fichero=pt27xQr%2149&x=7&y=13" -c 'https://consigna.us.es/547743/descarga' -O PLN-MULCIA-Junio-2020-Dataset.zip
unzip PLN-MULCIA-Junio-2020-Dataset.zip && mv -v PLN-MULCIA-Junio-2020-Dataset/* ./
rm -r PLN-MULCIA-Junio-2020-Dataset/
rm PLN-MULCIA-Junio-2020-Dataset.zip