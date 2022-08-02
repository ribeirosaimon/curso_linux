!/bin/bash

echo "Criando os diretórios"

mkdir /publico /adm /ven /sec

echo "Criando os grupos"

groupadd GRP_ADM GRP_VEN GRP_SEC

echo "Criando usuários do sistema"

useradd carlos -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwrd carlos -e
useradd maria -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwrd maria -e
useradd joao_ -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
passwrd joao_ -e

useradd debora -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwrd debora -e
useradd sebastiana -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwrd sebastiana -e
useradd roberto -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
passwrd roberto -e

useradd josefina -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwrd josefina -e
useradd amanda -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwrd amanda -e
useradd rogerio -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
passwrd rogerio -e

echo "Definindo permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!"
