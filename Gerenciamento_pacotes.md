# Gerenciamento de pacotes

Verificar versão e distribuição do Linux
Para saber qual versão do Ubuntu você está utilizando, basta rodar esse comando lsb_release -a no terminal e aí você terá a sua versão.

## Debian, Ubuntu e variações

> Link de todos os repositórios oficiais do ubuntu
apt edit-sources

> Consultar pacote pela descrição
apt search PACOTE

> Desinstalar pacotes
apt remove PACOTE

> Listar pacotes instalados
apt list –installed

> Fazer download do código fonte da aplicação
apt source PACOTE


## Atualizar o sistema operacional e versões de pacotes instalados

> Verificar os pacotes disponíveis para atualização
apt update 

> Atualizar pacote específico
apt upgrade PACOTE

> Atualizar todos os pacotes disponíveis para atualização
apt upgrade

> Instalar arquivos .deb local
.deb extensão de arquivo para instalação as distribuições

apt install ./ARQUIVO.deb


