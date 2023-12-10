# anime - ANdroid IMagE resizer
(based on [ImageMagick](https://imagemagick.org/))

anime is a compact Bash script designed to streamline the process of creating different density versions of an image, a common task in Android development.

## Description

The anime script takes an image and generates resized versions for different Android densities ([mdpi, hdpi, xhdpi, xxhdpi, xxxhdpi](https://developer.android.com/training/multiscreen/screendensities)). It then checks if all necessary subdirectories exist in the target directory, creating them if needed. Finally, it places the resized images into their respective subdirectories.

This simplifies the process of generating multiple image versions from a single source and automatically adding them to the desired directory in an Android Studio project.

## Prerequisites

The script requires ImageMagick to be installed on your system, additionally be sure the path to ImageMagick is added to the system PATH variable

## Usage

Here's the general structure of the command:

```bash
bash <path-to-bash_script>/anime.sh <path-to-image>/image.png <path-to-desired-storage-for-images>
```

*Note: \
  replace <path-to-bash_script>/anime.sh with the path to the anime script, \<path-to-image>/image.png with the path to the original image, 
  and \<path-to-desired-storage-for-images> with the path where you want to save the resized images.*

### Explanation for coders 😊, assuming that the following conditions apply:

  - You’re using the anime script in the Android Studio terminal (project root directory),
  - Both the anime script and the image are located on your Desktop,
  - And you intend to generate images for the app module of your application
    
so then use the following command:

```bash
bash ~/Desktop/anime.sh ~/Desktop/image.png app/src/main/res
```
