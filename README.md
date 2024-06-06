# Mensagem Telegram

ShellScript para envio de mensagem para o Telegram pelo terminal

```
#!/bin/bash
#
#
#===============================================================================
#
# File...........: mensagem.sh
# Title..........: Mensagem
# Program........: Shell Code -  GNU/Linux
#
# Description....: Envia mensagem para o Telegram via terminal
#
# Copyright......: Copyright(c) 2024 / @Diego.Casagranda - HackLab
# License........: GNU GENERAL PUBLIC LICENSE - Version 3, 29 June 2007
#
# Author.........: Diego Casagranda
# E-Mail.........: diego.casagranda@mail.ru
#
# Dependency.....: None
#
# Date...........: 05/06/2024
# Update.........: None
#
# Version........: 0.1.0
#
#===============================================================================
#
# ###########
# # History #
# ###########
#
#     05/06/2024 : Criação do codigo
#
#===============================================================================

# Defina seu token de acesso aqui
TOKEN="SEU_TOKEN_AQUI"

# Defina o ID do chat para onde você deseja enviar a mensagem
CHAT_ID="ID_DO_CHAT_AQUI"

# Mensagem a ser enviada (certifique-se de escapar caracteres especiais)
MESSAGE="$*"

# Envie a mensagem usando a API do Telegram
curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="$MESSAGE" >/dev/null

```

Você pode movelo para /usr/bin e disponibilizar o comando para todos os usuarios

```
# copiar para /usr/bin
sudo cp mensagem.sh /usr/bin/

# Permição para usuarios e grupos
sudo chmod 777 /usr/bin/mensagem.sh

# Tornalo executavel
sudo chmod +x /usr/bin/mensagem.sh
```










