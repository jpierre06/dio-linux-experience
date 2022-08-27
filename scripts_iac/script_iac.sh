#!/bin/bash


echo "\n"
echo "########## Script criação de grupos ##########"

if [ -f '/disk2/publica/grupo.txt' ]
then
	for linha in `cat /disk2/publica/grupo.txt`
	do
	        echo "Criando grupo $linha"
	        groupadd  $linha
	done
else
	echo "Arquivo com parametros de criação de grupos não existe"
	echo "Não será criado nenhum grupo no sistema"
fi





echo "\n"
echo "########## Script criação de diretório ##########"


if [ -f '/disk2/publica/diretorio.txt' ]
then
	for linha in `cat /disk2/publica/diretorio.txt`
	do
		# Extraindo informação diretorio
		diretorio="$(echo $linha | cut -d';' -f1)"

		#Extraindo informação usuario dono diretorio
		usuario="$(echo $linha | cut -d';' -f2)"

		#Extraindo informação grupo do diretorio
		grupo="$(echo $linha | cut -d';' -f3)"

		#Extraindo informação acesso diretorio
		acesso="$(echo $linha | cut -d';' -f4)"


		echo "Criando diretório $diretorio"
		mkdir $diretorio
		chown $usuario:$grupo $diretorio
		chmod $acesso $diretorio
	done

else
        echo "Arquivo com parametros de criação de diretorios não existe"
        echo "Não será criado nenhum diretorio no sistema"
fi



echo "\n"
echo "########## Script criação de usuario ##########"


if [ -f '/disk2/publica/usuario.txt' ]
then

	for linha in `cat /disk2/publica/usuario.txt`
	do
	        # Extraindo informação usuario
	        usuario="$(echo $linha | cut -d';' -f1)"

	        #Extraindo informação do shell usuario
	        shell_usuario="$(echo $linha | cut -d';' -f2)"

	        #Extraindo informação grupo do usuario
	        grupo="$(echo $linha | cut -d';' -f3)"

	        #Extraindo informação nome usuario
	        #nome_usuario="$(echo $linha | cut -d';' -f4)"

	        echo "Criando usuário $usuario"
	        useradd $usuario -m -s $shell_usuario -p $(openssl passwd -1 Senha123) -G $grupo
	done

else
        echo "Arquivo com parametros de criação de usuarios não existe"
        echo "Não será criado nenhum usuário no sistema"
fi
