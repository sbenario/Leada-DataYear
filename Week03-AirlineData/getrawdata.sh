#!/bin/sh

# This script downloads the data to use for this project, so that we don't need
# to store it all in git. The raw file is ~108MB.

# Data description page: http://stat-computing.org/dataexpo/2009/the-data.html

fileURL="http://stat-computing.org/dataexpo/2009/2008.csv.bz2"
destFile="2008.csv.bz2"

if [ -f "$destFile" ]
then
    echo "Data file already present"
else
    echo "Data file not found. Downloading."
    wget -nv --show-progress "$fileURL" 
fi

