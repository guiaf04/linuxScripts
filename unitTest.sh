#!/bin/bash

cd $1

log_file=logUnitTest.txt

touch $log_file

echo -e "\nLog testes (`date +%c`) \n `./gradlew test`" >> $log_file