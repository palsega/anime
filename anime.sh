#!/bin/bash

# Check for arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <image path> <save path>"
    exit 1
fi

# Extract filename and extension
filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

# Replace '-' with '_' and convert to lowercase
filename=${filename//-/_}
filename=${filename,,}

# Save path
path=$2

# Define densities and their corresponding resize percentages
declare -A densities=( ["xxhdpi"]="75%" ["xhdpi"]="50%" ["hdpi"]="37.5%" ["mdpi"]="25%" )

# Copy the original image for xxxhdpi density(100% version)
mkdir -p "$path/drawable-xxxhdpi"
cp $1 "$path/drawable-xxxhdpi/$filename.$extension"

# Iterate over the other densities
for density in "${!densities[@]}"; do
    # Create necessary directory if it doesn't exist
    mkdir -p "$path/drawable-$density"

    # Create image with the corresponding size
    convert $1 -resize ${densities[$density]} "$path/drawable-$density/$filename.$extension"
done
