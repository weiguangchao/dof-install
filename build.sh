#!/bin/bash

find . -name ".DS_Store" -type f -delete

cd ./MySQL
tar -czvf MySQL.tar.gz \
    ./init_sql \
    ./my.cnf \
    ./MySQL-client-5.5.62-1.el6.x86_64.rpm \
    ./MySQL-server-5.5.62-1.el6.x86_64.rpm
mv MySQL.tar.gz ../../dof-asset/
cd ../

cd ./Game
tar -czvf Game.tar.gz \
    ./home \
    ./usr \
    ./run \
    ./stop
mv Game.tar.gz ../../dof-asset/
cd ../

cd ./Gate
tar -czvf Gate.tar.gz \
    ./home \
    ./usr \
    ./Config.ini \
    ./DnfGateServer \
    ./GateRestart \
    ./GateStop \
    ./privatekey.pem
mv Gate.tar.gz ../../dof-asset/
cd ../
