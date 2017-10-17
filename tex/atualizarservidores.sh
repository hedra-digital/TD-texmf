#!/bin/sh

# Esse script necessita que o usuario tenha acesso ao servidor através de public key.
# Caso não tenha, a senha deverá ser fornecida no momento da execução.


echo "1 -- Atualizando TEXMF/AMAZON-WIDBOOK em PRODUÇÂO..................................."
server_address="184.73.101.57"
server_username="ubuntu"
repo_dir="/home/ubuntu/texmf/tex"
ssh $server_username@$server_address "cd $repo_dir; git pull origin master"


#echo "1 -- Atualizando TEMPLANTES LATEX em PRODUÇÂO..................................."
#server_address="hedra.tipografiadigital.com.br"
#server_username="jorge"
#repo_dir="/home/jorge/latex"
#ssh $server_username@$server_address "cd $repo_dir; git pull origin td-producao"
#
#echo "2 -- Atualizando TEXMF PARA TESTES LOCAIS em PRODUÇÂO..................................."
#repo_dir="/home/jorge/texmf/tex"
#ssh $server_username@$server_address "cd $repo_dir; git pull origin td-producao-texmf"
#
#echo "3 -- Atualizando TEMPLANTES LATEX em STAGING..................................."
#server_address="staging.tipografiadigital.com.br"
#server_username="jorge"
#repo_dir="/home/jorge/latex"
#ssh $server_username@$server_address "cd $repo_dir; git pull origin td-producao"
#
#echo "4 -- Atualizando TEXMF PARA TESTES LOCAIS em STAGING..................................."
#repo_dir="/home/jorge/texmf/tex"
#ssh $server_username@$server_address "cd $repo_dir; git pull origin td-producao-texmf"
#
#echo "5 -- Atualizando TEXMF em PRODUÇÃO (deploy)..................................."
#server_address="hedra.tipografiadigital.com.br"
#server_username="deploy"
#repo_dir="/home/deploy/texmf/tex"
#ssh $server_username@$server_address "cd $repo_dir; git pull origin td-producao-texmf"
#
#echo "6 -- Atualizando TEXMF em STAGING (deploy)..................................."
#server_address="staging.tipografiadigital.com.br"
#server_username="deploy"
#repo_dir="/home/deploy/texmf/tex"
#ssh $server_username@$server_address "cd $repo_dir; git pull origin td-producao-texmf"
