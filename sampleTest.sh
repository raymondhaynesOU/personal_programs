#!/bin/bash

head -250 npidata.csv > npiMini.csv
awk -f csv2jsonOK.awk < npiMini.csv > npiMiniOK.json
