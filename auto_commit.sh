#!/bin/bash
#########################################################


TOKEN="TELEGRAM_TOKEN"
CHAT_ID="CHAT_ID"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
DIRECTORY="/var/www/project/"

#########################################################

DATA=`date +'%d/%m/%Y %H:%M:%S'`

MSG="# ------------------------------------------------------ #

📱 Project Name
👀 Starting upload to github
⏰ Starting in: ${DATA}
"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MSG"

cd DIRECTORY
git add .
git commit -m "${DATA}"
git push origin dev

DATA=`date +'%d/%m/%Y %H:%M:%S'`

MSG="

🥳 Upload to Dev branch completed
⏰ Finished in ${DATA}

# ------------------------------------------------------ #
"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MSG"