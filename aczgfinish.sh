#!/bin/bash

if [ $# -ne 2 ] 
then
    echo "Usage: $0 <caminho_completo> <nome_entrega>"
    exit 1
fi

repo=$1
nomeEntrega=feat-$2

if [ ! -e $1 ]
then
    echo diretorio nao existe
    exit 1
fi

cd $repo

git checkout main

git merge $nomeEntrega

git branch -d $nomeEntrega