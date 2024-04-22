#!/bin/bash

# Change directory to src/Version
cd ../src/Version || { echo "Error: Could not change directory."; exit 1; }

# Get current timestamp
CURRENT_TIMESTAMP=$(date +%s)

# Define header guard
HEADER_GUARD="FIRMWARE_VERSION_H"

# Generate header file content
echo "#ifndef $HEADER_GUARD" > firmware_version.h
echo "#define $HEADER_GUARD" >> firmware_version.h
echo "" >> firmware_version.h
echo "#define FIRMWARE_VERSION $CURRENT_TIMESTAMP" >> firmware_version.h
echo "" >> firmware_version.h
echo "#endif // $HEADER_GUARD" >> firmware_version.h
