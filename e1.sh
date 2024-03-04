#!/bin/bash

#curl -G  -d "qli=true" -d "query=" -d "sort=pubExternalDate_tdt" -d "itemsPerPage=20" -d "pageNum=$1" -d "travelMode=TRANSIT" -d "startPoint=" -d "endPoint=" -d "country=Deutschland" -d "location=Berlin" -d "positiontype=Akademische%3Ar+Professional"  https://db.jobs/service/search/de-de/5441588 |  grep jobId | grep title-text >Seiten/Seite$1.html


#curl -G -d "nn=4642046" -d "ambit_distance=10"  -d "input_=4642046"  -d "gtp=4642266_list%253D$1"  -d "solr_opengeo_id.HASH=b4a0H3f8m8qHjO9TZuQ1W77cvUf7QWE%3D"  -d "type=0"  -d "searchResult=true"  -d "submit=Finden"  -d "resourceId=4642034"  -d "city_zipcode=Berlin"  -d "pageLocale=de"  https://www.service.bund.de/Content/DE/Stellen/Suche/Formular.html  

#curl -G -d "qli=true"  -d "query=" -d "sort=pubExternalDate_tdt" -d "itemsPerPage=20" -d "pageNum=0" -d "state=Berlin" https://db.jobs/service/search/de-de/5441588 | grep  IMPORTE >Seiten/Seite$1.html
#curl -G -d "nn=4642046" -d "ambit_distance=10" -d "input_=4642046" -d "gtp=4642266_list%253D5" -d "solr_opengeo_id.HASH=15a3zR5lai5JXkLzjWIkvLdnabYTUmY%3D" -d "type=0" -d "searchResult=true" -d "submit=Finden" -d "resourceId=4642034" -d "city_zipcode=Berlin" -d "pageLocale=de" https://www.service.bund.de/Content/DE/Stellen/Suche/Formular.html | grep  IMPORTE >Seiten/Seite$1.html


echo Seite: $1
curl -G -d "nn=4642046" -d "ambit_distance=10" -d "gtp=4642266_list%253D$1" -d "type=0" -d "searchResult=true" -d "submit=Finden" -d "cl2Addresses_Adresse_State=berlin"   https://www.service.bund.de/Content/DE/Stellen/Suche/Formular.html | grep  IMPORTE >Seiten/Seite$1.html

