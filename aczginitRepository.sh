#!/bin/bash

if [ $# -ne 2 ] 
then
    echo "Usage: $0 <caminho_completo> <nome_projeto>"
    exit 1
fi

nome_projeto=$2

if [ ! -e $1 ] 
then
    echo Diretorio nao existente
    exit 1
fi


cd $1

mkdir $nome_projeto

cd $nome_projeto

touch REAME.md

echo "projeto $nome_projeto inicializado...." >> REAME.md

git init

git add .

git commit -m "first commit - repositório configurado"