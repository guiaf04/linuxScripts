#!/bin/bash

if [ $# -gt 2 -o $# -lt 1 ] 
then
    echo "Usage: $0 <caminho_completo> <periodicidade>(optional)"
    exit 1
fi

repo=$1
periodTests="0 */2 * * *"
periodCommit="0 0 * * *"

if [ $# -eq 2 ]
then
    periodTests=$2
    periodCommit=$2
fi

if [ ! -e $repo ]
then
    echo "Esse diretorio nao existe, certifique-se de passar o caminho total corretamente"
    exit 1
fi

cd $repo

gradle=gradlew

if [ ! -e $gradle ]
then 
    echo "Esse diretorio não é um projeto gradle"
    exit 1
fi

if [ ! -e .git/ ]
then 
    echo "Esse diretorio não é um repositorio git"
    exit 1
fi


( crontab -l 2>/dev/null; echo "$periodTests DISPLAY=:0 /home/guilherme/UFC/testes_shell/unitTest.sh $repo && $ALERT_CMD 'Testes realizados com sucesso!'" ) | crontab -
( crontab -l 2>/dev/null; echo "$periodCommit DISPLAY=:0 /home/guilherme/UFC/testes_shell/commits.sh $repo && $ALERT_CMD 'Commits realizados com sucesso!'" ) | crontab -