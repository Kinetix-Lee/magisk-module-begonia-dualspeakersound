#!/bin/bash

if [ ! -d build ]; then
  mkdir build
fi

cp -r ./template ./build/template
cp -f ./src/audio_device.xml ./build/template/audio_device.xml

if [ -d ./build/magisk-module-begonia-dualspeakersound.zip ]; then
  rm ./build/magisk-module-begonia-dualspeakersound.zip
fi

cd ./build/template
zip -v -r ../magisk-module-begonia-dualspeakersound.zip ./*
cd ../../
rm ./build/template -rf
