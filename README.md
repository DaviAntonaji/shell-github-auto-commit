#### Hi, this project is a script for automatic commits every day to the dev branch 😁
------------
##### 👨🏻‍💻 About the project
###### The project is a script for automatic commits every day to the dev branch, where it is used on linux running in a cron every day, giving the automatic commit with your github SSH key. The project also sends an alert for monitoring the Telegram

- 🤔 The remote repository must be added as SSH (git@github.com:...)
- 💻 The id_rsa.pub must be added to your github account
------------
##### Installation

- First change all project constants

- Enter the project folder in a terminal and run the command 
```
./auto_commit.sh
```

- To put this in a cron job type in the terminal
```
crontab -e
```
- To run this script type the following line (In this example, I'll set it to run every day at 11 pm):
```
0 23 * * * directory/./auto_commit.sh
```
------------

##### See too

- [https://docs.microsoft.com/pt-br/azure/bot-service/bot-service-channel-connect-telegram?view=azure-bot-service-4.0](Como criar um bot no telegram)

- [https://core.telegram.org/bots](How create Telegram Bot)

- [https://docs.github.com/pt/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account](Adicionar uma nova chave SSH à sua conta do GitHub)