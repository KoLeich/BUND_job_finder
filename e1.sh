#!/bin/bash


echo Seite: $1
curl -G -d "nn=4642046" -d "ambit_distance=10" -d "gtp=4642266_list%253D$1" -d "type=0" -d "searchResult=true" -d "submit=Finden" -d "cl2Addresses_Adresse_State=berlin"   https://www.service.bund.de/Content/DE/Stellen/Suche/Formular.html | grep  IMPORTE >Seiten/Seite$1.html

# cl2Addresses_Addresses_State is set to Berlin, if you want to place in another city or more cities, you have to change this value
