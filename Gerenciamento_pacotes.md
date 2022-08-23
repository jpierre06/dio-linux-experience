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


### Snap

O Ubuntu também tem o snap.
No Debian não vem pré-instalado, mas, é possível instalar.

Fonte:
https://diolinux.com.br/tutoriais/snap-nas-principais-distro-linux.html


> Instalar o snap utilizando apt

sudo apt install snapd


* Reinicie o sistema para que os caminhos do snap sejam criados corretamente e instale o core do snapd.

sudo snap install core

## Fedora, Red Hat, CentOS e variações

As distribuições trabalham com pacote .rpm

Existe os gerenciadores de pacote yum e dnf


## Slackware

### Slackpkg

Versão básica que não é instalada por padrão na distro

Você pode encontrá-lo dentro da pasta “extra/slackpkg/” no diretório do Slackware.


### Slapt-get

> Baixar a versão correspondente à versão do Slackware e instalar usando utilitário installpkg

installpkg slapt-get-0.9.12e-i386-1.tgz


> Atualizar lista de pacotes atualizáveis

slapt-get –update


> Atualizar pacotes

slapt-get –upgrade


> A partir daí, você instalar novos programas usando o “slapt-get –install”, como em:

slapt-get –install httpd


> Para remover, use o “slapt-get –remove”, como em:

slapt-get –remove httpd

### Slackpkg+


### Sbopkg


## openSUSE

### zypper 


## Homebrew

> Instalando dependências

sudo apt-get install build-essential procps curl file git


> Instalando gerenciador de pacotes

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


> Configurando PATH

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.bash_profile

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


> Verificando a instalação do brew
brew doctor

brew install hello


> Instalar um pacote:

brew install nome_do_pacote


> Remover um pacote, você pode usar a opção remove ou uninstall. Ambos trabalham da mesma forma.

brew remove nome_do_pacote


> Listar os pacotes instalados

brew list


> Remover dependências desnecessárias

brew autoremove


