#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "Iniciando criação de grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos grupos conclúido!"

echo "Criação de usuários em andamento..."

echo "Usuários GRP_ADM 1º"

useradd carlos -m -s /bin/bash -c "Carlos" -p $(openssl passwd -1 senha123)
passwd -e carlos
useradd -G GRP_ADM carlos

useradd maria -m -s /bin/bash -c "Maria" -p $(openssl passwd -1 senha123)
passwd -e maria
useradd -G GRP_ADM maria

useradd joao -m -s /bin/bash -c "João" -p $(openssl passwd -1 senha123)
passwd -e joao
useradd -G GRP_ADM joao

echo "Finalizados GRP_ADM"

echo "Começando GRP_VEN em 2º"

useradd debora -m -s /bin/bash -c "Debora" -p $(openssl passwd -1 senha123)
passwd -e debora
useradd -G GRP_VEN debora

useradd sebastiana -m -s /bin/bash -c "Sebastiana" -p $(openssl passwd -1 senha123)
passwd -e sebastiana
useradd -G GRP_VEN sebastiana

useradd roberto -m -s /bin/bash -c "Roberto" -p $(openssl passwd -1 senha123)
passwd -e roberto
useradd -G GRP_VEN roberto

echo "Finalizando GRP_VEN"

echo "Iniciando GRP_SEC 3º"

useradd josefina -m -s /bin/bash -c "Josefina" -p $(openssl passwd -1 senha123)
passwd -e josefina
useradd -G GRP_SEC josefina

useradd amanda -m -s /bin/bash -c "Amanda" -p $(openssl passwd -1 senha123)
passwd -e amanda
useradd -G GRP_SEC amanda

useradd rogerio -m -s /bin/bash -c "Rogério" -p $(openssl passwd -1 senha123)
passwd -e rogerio
useradd -G GRP_SEC rogerio

echo "Finalizado criação de todos os usuários e acrescentados em seus respectivos grupos!"

echo "Manipulando permissão dos diretórios!"

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizando manipulação dos diretórios e suas respectivas permissões!"

echo "Finalizando script"


