#!/bin/bash

find . -name ".DS_Store" -type f -delete

cd ./MySQL ; tar -czvf MySQL.tar.gz ./root ; mv MySQL.tar.gz ../ ; cd ../

cd ./Dnf_Gate ; tar -czvf Dnf_Gate.tar.gz ./home ./root ./usr ; mv Dnf_Gate.tar.gz ../ ; cd ../

cd ./Game ; tar -czvf Game.tar.gz ./dp2 ./home ./root ./usr ; mv Game.tar.gz ../ ; cd ../
