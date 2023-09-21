#!/bin/bash

# Capture input parameters
ROOT_SCRIPT=$1
OUTPUT_FILE=$2

# Setup the ROOT environment
export PATH=$PATH:/usr/local/root/bin
export ROOTSYS=/usr/local/root
export CMAKE_PREFIX_PATH=/usr/local/root
export LD_LIBRARY_PATH=/usr/local/root/lib

# Compile and run the ROOT script
root -b -q -l $ROOT_SCRIPT

# Check if the output file exists, if specified
if [ -n "$OUTPUT_FILE" ]; then
  if [ -f $OUTPUT_FILE ]; then
    echo "ROOT script executed successfully, and the output file exists."
  else
    echo "Error: ROOT script did not generate the specified output file."
    exit 1
  fi
else
  echo "ROOT script executed successfully. No output file specified to check for."
fi
