# Script para atividade de automação da infraestrutura

## Material de estudo do Bootcamp Linux Experience da DIO

> Arquivo script_iac.sh

Script para criação de:

* Grupos
* Diretórios
* Usuários


O script lê os arquivos abaixo com parâmetros que são repassasdos para os respectivos comandos de criação de grupo, diretório e usuário

Obs.: Não editar arquivos .txt em ambiente windows devido a codificação de caracteres


> grupo.txt

Arquivo com relação de grupos a serem criados


> diretorio.txt

Arquivo com relação de diretórios a serem criados

Os parâmetros de criação de diretório devem ser separados por ; conforme descrição abaixo

diretorio;usuario_dono_diretorio;grupo_dono_diretorio;permissao_diretorio


> usuario.txt

Arquivo com relação de usuários a serem criados

Os parâmetros de criação de usuário devem ser separados por ; conforme descrição abaixo

usuario;shell_usuario;grupo






