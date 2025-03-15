#!/bin/bash

find . -name ".DS_Store" -type f -delete

cd ./MySQL
tar -czvf MySQL.tar.gz \
    ./init_sql \
    ./my.cnf \
    ./MySQL-client-5.5.62-1.el6.x86_64.rpm \
    ./MySQL-server-5.5.62-1.el6.x86_64.rpm
mv MySQL.tar.gz ../
cd ../

cd ./Game
tar -czvf Game.tar.gz \
    ./dp2 \
    ./home \
    ./usr \
    ./run \
    ./stop
mv Game.tar.gz ../
cd ../

cd ./Dnf_Gate
tar -czvf Dnf_Gate.tar.gz \
    ./home \
    ./usr \
    ./Config.ini \
    ./DnfGateServer \
    ./GateRestart \
    ./GateStop \
    ./privatekey.pem
mv Dnf_Gate.tar.gz ../
cd ../
