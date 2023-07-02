# RDR2-DLSS-Updater

Automatically copies a newer DLSS dll file to Red Dead Redemption 2's game folder for improved visual quality.

Some versions of the game re-download an older version of the DLSS file, so this script ensures you stay using a better one.

Simple script, it waits for the game to start and then copies the new dll into the directory for the game to load.

## Prerequisites:

[Autohotkey installed](https://www.autohotkey.com/)

## Usage:

1. Download and unzip this repo.

2. Open <u>RDR2_DLSS_UPDATER.ahk</u> in a text editor.

3. Change **line 5** to point to where your game is installed (In quotes, no slash at the end).

4. Save the file and run it.

5. Start RDR2.

The script will continue to run and copy the file again when needed.
