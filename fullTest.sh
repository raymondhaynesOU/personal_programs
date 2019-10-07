#!/bin/bash
#This will likely take a while to run due to the massive amounts of information processed

awk -f csv2jsonOK.awk < npiData.csv > npiDataOK.json
