#!/bin/bash

read -p "Arquivo: " arq
awk -f 2m.awk $arq >> meninos.txt
awk -f 2f.awk $arq >> meninas.txt
echo "Arquivos com nomes separados criados com sucesso."
