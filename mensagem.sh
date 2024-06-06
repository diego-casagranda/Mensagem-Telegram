#!/bin/bash
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

# Token do seu bot do Telegram
TELEGRAM_BOT_TOKEN="SEU_TOKEN_AQUI"

# ID do chat ou usuário para o qual você deseja enviar a mensagem
CHAT_ID="ID_DO_CHAT_AQUI"

# Mensagem a ser enviada
MESSAGE="$*"

# URL de envio da mensagem
URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"

# Envia a mensagem usando curl
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"