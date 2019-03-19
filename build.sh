#!/bin/sh

source .env

cd ./app

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> building app..."
make clean
make


echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> copying app to layout..."
rm -rf ../layout/Applications/*
cp -r ./.theos/obj/debug/testmessageport.app ../layout/Applications/


cd ..

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>> building package..."
make clean
make package install