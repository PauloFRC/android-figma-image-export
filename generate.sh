#!/bin/bash

mkdir -p drawable-mdpi drawable-hdpi drawable-xhdpi drawable-xxhdpi drawable-xxxhdpi

for img in *.png; do
    echo "Processing $img..."

    # Assuming source is xxxhdpi (4x)
    # mdpi (1x)
    convert "$img" -resize 25% "drawable-mdpi/$img"
    
    # hdpi (1.5x)
    convert "$img" -resize 37.5% "drawable-hdpi/$img"
    
    # xhdpi (2x)
    convert "$img" -resize 50% "drawable-xhdpi/$img"
    
    # xxhdpi (3x)
    convert "$img" -resize 75% "drawable-xxhdpi/$img"
    
    # xxxhdpi (4x)
    cp "$img" "drawable-xxxhdpi/$img"
done

echo "Done."
