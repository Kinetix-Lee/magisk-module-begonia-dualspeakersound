#!/bin/bash

if ! test build; then
  mkdir build
else
  ls ./build/
  if test ./build/magisk-module-begonia-dualspeakersound.zip; then
    echo "Removing old build..."
    rm ./build/magisk-module-begonia-dualspeakersound.zip
  fi
fi

cp -r ./template ./build/
cp ./src/audio_device.xml ./build/template/system/vendor/etc/audio_device.xml

cd ./build/template
echo "Making Magisk module..."
echo ""
zip -r9T ../magisk-module-begonia-dualspeakersound.zip ./*
cd ../../
rm -rf ./build/template

echo ""
echo "Everything is done. Flash build/magisk-module-begonia-dualspeakersound.zip with Magisk v20+. "
