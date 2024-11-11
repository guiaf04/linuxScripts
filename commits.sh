#!/bin/bash

cd $1

git add .
git commit -m "feat: atualizacao diaria (`date +%c`)"