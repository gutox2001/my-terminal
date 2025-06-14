# ⚙️ Minha Configuração de Terminal para Windows
Este repositório contém meus arquivos de configuração para criar um ambiente de terminal produtivo e visualmente agradável no Windows, usando Windows Terminal, PowerShell, Oh My Posh e outras ferramentas.

## ✨ Resultado Final
📋 Pré-requisitos
Antes de começar, certifique-se de que você tem os seguintes softwares instalados no seu Windows:

- Windows Terminal: Instale pela Microsoft Store.
- Git: Necessário para clonar este repositório.
- Nerd Font: Passo crucial! Os ícones no terminal só funcionam com uma fonte que os contenha. Recomendo a CaskaydiaCove Nerd Font.
    - Clique aqui para baixar a CaskaydiaCove Nerd Font.
    - Descompacte o arquivo e instale a fonte CaskaydiaCoveNerdFont-Regular.ttf (clique com o botão direito no arquivo > "Instalar para todos os usuários").

# 🚀 Passo a Passo da Instalação
Siga estes passos para replicar a configuração em uma nova máquina Windows.

## Passo 1: Instalar Módulos do PowerShell
Algumas das funcionalidades, como os ícones e o tema do prompt, dependem de módulos que precisam ser instalados.

Abra o PowerShell como Administrador.

Execute os seguintes comandos para instalar os módulos oh-my-posh e terminal-icons:

PowerShell

### Instala o Oh My Posh (motor de temas)
Install-Module oh-my-posh -Scope CurrentUser

### Instala o Terminal Icons (ícones para arquivos e pastas)
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Se for a primeira vez que você instala módulos, talvez precise permitir a execução de scripts. Se perguntado, responda S (Sim) ou T (Sim para Todos). Se encontrar erros, execute:

PowerShell

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
## Passo 2: Clonar este Repositório
Escolha uma pasta no seu computador para guardar os arquivos de configuração (ex: C:\Users\aroldo\dotfiles) e clone este repositório.

PowerShell

__Exemplo:__
```bash
git clone https://github.com/seu-usuario/meu-terminal-config.git C:\Users\aroldo\dotfiles
cd C:\Users\aroldo\dotfiles
```

## Passo 3: Configurar o Windows Terminal
- Abra o Windows Terminal e vá para Configurações (Ctrl + ,).
- Clique em "Abrir arquivo JSON" no canto inferior esquerdo.
- Copie todo o conteúdo do arquivo windows-terminal/settings.json deste repositório.
- Cole o conteúdo no seu arquivo settings.json local, substituindo tudo que estava lá. Salve e feche.
- Isso irá configurar o terminal para usar a Nerd Font que você instalou e aplicar seu esquema de cores.


## Passo 4: Configurar o Perfil do PowerShell
Agora, vamos dizer ao PowerShell para carregar nossas customizações na inicialização.

No PowerShell, verifique se o arquivo de perfil já existe e crie-o se necessário:
PowerShell

### Este comando cria o arquivo e a pasta se eles não existirem
```bash 
if (!(Test-Path $PROFILE)) { New-Item -Path $PROFILE -ItemType File -Force } 
```
Copie o arquivo de perfil deste repositório para o local que o PowerShell usa. Execute este comando no PowerShell a partir da raiz do seu repositório clonado:
PowerShell

__Certifique-se de que você está na pasta do repositório__

Copy-Item -Path .\powershell\Microsoft.PowerShell_profile.ps1 -Destination $PROFILE -Force
Passo 5: Reiniciar o Terminal
Feche todas as janelas do Windows Terminal e abra uma nova.

## Pronto! 
Seu terminal deve carregar com a aparência e as funcionalidades que você definiu, incluindo seu tema do Oh My Posh, os ícones e seu alias pa para o php artisan.