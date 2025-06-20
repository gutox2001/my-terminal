# ⚙️ Minha Configuração de Terminal para Linux
Este repositório contém meus arquivos de configuração para criar um ambiente de terminal produtivo e visualmente agradável no Linux, PowerShell, Oh My Zsh e outras ferramentas.

## ✨ Resultado Final
📋 Pré-requisitos
Antes de começar, certifique-se de que você tem os seguintes softwares instalados no seu Linux:

- Git: Necessário para clonar este repositório.
- Nerd Font: Passo crucial! Os ícones no terminal só funcionam com uma fonte que os contenha. Recomendo a CaskaydiaCove Nerd Font.
    - Clique aqui para baixar a CaskaydiaCove Nerd Font.
    - Descompacte o arquivo e instale a fonte CaskaydiaCoveNerdFont-Regular.ttf (clique com o botão direito no arquivo > "Instalar para todos os usuários").

# 🚀 Passo a Passo da Instalação
Siga estes passos para replicar a configuração em uma nova máquina Ubuntu.

## Passo 1: 
Crie um novo arquivo:
```bash
nano setup-linux-terminal.sh
```
Cole o conteúdo do arquivo `setup-linux-terminal` deste repositório dentro do arquivo que você acabou de criar.
Salve e saia do editor (Ctrl + O, Enter, Ctrl + X).

## Passo 2:
Dê permissão de execução ao script:
```bash
chmod +x setup-linux-terminal.sh
```

## Passo 3:
Execute o script:
```bash
./setup-linux-terminal.sh
```
## Passo 4: 
Abra o arquivo de configuração do Zsh:
```bash
source ~/.zshrc
```

### OBS:
Se não for possível abrir o arquivo de configuração do Zsh, você pode tentar:
- Trocar para o zsh agora mesmo.
- Tornar o zsh o shell padrão.
```bash
zsh
chsh -s $(which zsh)

```

## Passo 5:
Configure o Powerlevel10k:
```bash
p10k configure
```


## Pronto! 
Seu terminal deve carregar com a aparência e as funcionalidades que você definiu, incluindo seu tema do Oh My Zsh, os ícones e seu alias para o php artisan.