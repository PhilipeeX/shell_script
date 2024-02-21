#!/bin/bash

echo "Bem vindo ao sistema de testes de vulnerabilidade, digite um site para checkar:"
read site

if [ "$site" == "" ]; then
site="https://www.google.com.br"
vulnerabilidade="CVE-2014-0671"
fi

echo
resultado=$(curl -s -I "$site" | grep "$vulnerabilidade")

if  [ -n "$resultado" ]; then
	echo "Vulnerabilidade encontrada"
else
	echo "Site seguro"
fi

