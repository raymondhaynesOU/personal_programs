#!/bin/bash
#This will likely take a while to run due to the massive amounts of information processed

awk -f csv2jsonOK.awk < npidata.csv > npiDataOK.json
