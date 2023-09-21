#!/bin/bash

export PATH=$PATH:/usr/local/root/bin

# Split the scripts and output files into arrays
IFS=',' read -ra SCRIPTS <<< "\$1"
IFS=',' read -ra OUTPUT_FILES <<< "\$2"

# Loop over the scripts and output files
for i in "${!SCRIPTS[@]}"; do
  # Compile the ROOT script
  root -b -q -l ${SCRIPTS[$i]}
  
  # Check the exit status of the ROOT command
  if [ $? -eq 0 ]; then
    echo "ROOT script ${SCRIPTS[$i]} executed successfully."
  else
    echo "Error: ROOT script ${SCRIPTS[$i]} failed to execute."
    exit 1
  fi

  # If an output file is specified, check if it exists
  if [ ! -z "${OUTPUT_FILES[$i]}" ]; then
    if [ -f ${OUTPUT_FILES[$i]} ]; then
      echo "ROOT script ${SCRIPTS[$i]} generated the output file ${OUTPUT_FILES[$i]} successfully."
    else
      echo "Warning: ROOT script ${SCRIPTS[$i]} did not generate the output file ${OUTPUT_FILES[$i]}."
    fi
  fi
done
