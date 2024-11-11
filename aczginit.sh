#!/bin/bash

if [ $# -ne 2 ] 
then
    echo "Usage: $0 <caminho_completo> <nome_entrega>"
    exit 1
fi

repo=$1
nomeEntrega=feat-$2
gitRepo=.git/

if [ ! -e $1 ]
then
    echo diretorio nao existe
    exit 1
fi

cd $repo

if [ ! -e $gitRepo ]
then 
    echo Esse diretorio não é um repositório git
    exit 1
fi

git status

git switch -c $nomeEntrega 

git branch -a