Go to the commandline of your Victron GX device (Cerbo GX or a Raspberry Pi)

Copy the code from step 1 to step 3, paste it on the commandline (right mouse button) and execute it. After that you have to modify 3 files (step 4-6).

## STEP 1

download the installer files
```
wget -qO - https://github.com/kaldi-de/20240502/archive/refs/tags/latest.tar.gz | tar -xzf - -C /data
```
## STEP 2
rename the directory
```
mv /data/20240502-latest /data/RelayBox
```
## STEP 3
Choose the setup and the language you want to install. Please choose only one... ;-)

english version!
```
python /data/RelayBox/setup-en.py
```
german version!
```
python /data/RelayBox/setup-de.py
```
