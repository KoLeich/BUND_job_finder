#!/bin/bash

line="https://db.jobs/de-de/Suche/Referent-in-Strategische-Bauplanung-und-Sonderprogramme-Kapazitae-10509056?jobId=218113"

STR=$( curl -L   "$line")
SUB=adressatengerechte

if [[ "$STR" == *"$SUB"* ]]; then
  echo $line
fi
