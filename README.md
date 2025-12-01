## Exporting Figma PNG resource images to Android 

In Android, there are six main folders for image resources in each resolution:

- drawable-mdpi (1x)
- drawable-hdpi (1.5x)
- drawable-xhdpi (2x)
- drawable-xxhdpi (3x)
- drawable-xxxhdpi (4x)

Using the [Android Resources Export](https://www.figma.com/community/plugin/735452896889481850/android-resources-export), it is possible to export automatically png images in all resolutions, but in many complex objects, it may struggle
to export them. So using this bash script would make sense.

<img width="530" height="339" alt="figma-plugin-ex" src="https://github.com/user-attachments/assets/160a507e-13ef-4c8d-a81e-efd0753ba5ba" />

### Dependencies

`sudo apt install imagemagick`

### How to use

Export each image from Figma once in 4x size (xxxhdpi quality):

<img width="244" height="109" alt="image" src="https://github.com/user-attachments/assets/d356287c-dfa9-4418-9504-fbaf0668badf" />

Put all the png images in the same directory as the bash script and run the script:

`./generate.sh`

All the images converted will appear in the appropriate folders in the repo directory.

### Tip

After importing the png images in the project folders, covert them to webp to occupy less space using Android Studio's converter by doing Right Click > Convert to WebP and choosing compression according to quality
