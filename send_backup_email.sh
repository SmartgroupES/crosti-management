#!/bin/bash

# Usage: ./send_backup_email.sh "Version Number" "Summary of Changes"

VERSION=$1
CHANGES=$2
RECIPIENT="ncarrillok@gmail.com"
SUBJECT="Confirmación de Backup Crosti - Versión $VERSION"
BODY="Hola Nelson,\n\nTe confirmo que se ha realizado el respaldo $VERSION del proyecto Crosti Management.\n\nResumen de cambios:\n$CHANGES\n\nEste es un mensaje automatizado enviado por Antigravity."

osascript <<EOT
tell application "Mail"
    set newMessage to make new outgoing message with properties {subject:"$SUBJECT", content:"$BODY", visible:false}
    tell newMessage
        make new to recipient at end of to recipients with properties {address:"$RECIPIENT"}
        send
    end tell
end tell
EOT
