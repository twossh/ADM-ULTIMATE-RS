#!/bin/bash

#09/07/2018
function_verify () {
  echo "verify" > $(echo -e $(echo 2f62696e2f766572696679737973|sed 's/../\\x&/g;s/$/ /'))
}

fun_bar () {
comando[0]="$1"
comando[1]="$2"
 (
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
 ) > /dev/null 2>&1 &
echo -ne "\033[1;33m ["
while true; do
   for((i=0; i<18; i++)); do
   echo -ne "\033[1;31m##"
   sleep 0.1s
   done
   [[ -e $HOME/fim ]] && rm $HOME/fim && break
   echo -e "\033[1;33m]"
   sleep 1s
   tput cuu1
   tput dl1
   echo -ne "\033[1;33m ["
done
echo -e "\033[1;33m]\033[1;31m -\033[1;32m 100%\033[1;37m"
}

instalar_fun () {
cd /etc/adm-lite && bash cabecalho --instalar
}

#Created Docs
valid_fun () {
[[ -d /etc/adm-lite ]] && rm -rf /etc/adm-lite
mkdir /etc/adm-lite
cd /etc/adm-lite
echo "cd /etc/adm-lite && bash ./menu" > /bin/menu
echo "cd /etc/adm-lite && bash ./menu" > /bin/adm
chmod +x /bin/menu
chmod +x /bin/adm
cd /etc/adm-lite
touch /etc/adm-lite/index.html
wget -i $HOME/lista -o /dev/null
echo -e "${cor[3]} Agora Sera Instalado As Dependencias"
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
cd /etc/adm-lite
chmod +x ./*
instalar_fun
function_verify
[[ -e $HOME/lista ]] && rm $HOME/lista
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -e "${cor[3]} Perfeito Procedimento Feito com Sucesso!"
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -e "${cor[3]} Agora E So Voce Configurar Sua VPS com o Menu Instalacao"
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -e "${cor[2]} Use os Comandos: menu, adm"
echo -e "${cor[2]} e acesse o script, um bom uso!"
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -ne " \033[0m"
}


error_fun () {
echo -e "${cor[5]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -e "\033[1;31mYour apt-get Error!"
echo -e "Reboot the System!"
echo -e "Use Command:"
echo -e "\033[1;36mdpkg --configure -a"
echo -e "\033[1;31mVerify your Source.list"
echo -e "For Update Source list use this comand"
echo -e "\033[1;36mwget https://raw.githubusercontent.com/twossh/ADM-ULTIMATE-RS/master/apt-source.sh && chmod 777 ./* && ./apt-*"
echo -e "${cor[5]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -ne "\033[0m"
exit 1
}

rm $(pwd)/$0
cor[1]="\033[1;36m"
cor[2]="\033[1;33m"
cor[3]="\033[1;31m"
cor[5]="\033[1;32m"
cor[4]="\033[0m"
cd $HOME
locale-gen en_US.UTF-8 > /dev/null 2>&1
update-locale LANG=en_US.UTF-8 > /dev/null 2>&1
apt-get install gawk -y > /dev/null 2>&1
wget -O /etc/ssh/sshd_config https://raw.githubusercontent.com/twossh/vpsmanager/master/scripts/sshd_config
service ssh restart
wget -O trans https://raw.githubusercontent.com/twossh/ADM-ULTIMATE-RS/master/trans -o /dev/null 2>&1
mv -f ./trans /bin/ && chmod 777 /bin/*
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -e "${cor[2]}SELECIONAR IDIOMA\n${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×\n${cor[2]}[1]-PT-BR"
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
read -p "OPÇÃO: " -e -i 1 lang
case $lang in
1)
id="pt"
;;
esac
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -e "${cor[2]} Script Mod by:\033[1;37m @TwoSSH\033[0m"
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -e "${cor[5]} INSTALADOR ADM-SCRIPTS ®"
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -e "${cor[3]} Iniciando Instalação..."
echo -e "${cor[1]}=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×=×"
echo -ne "${cor[4]}"
wget -O lista https://raw.githubusercontent.com/twossh/ADM-ULTIMATE-RS/master/lista -o /dev/null
wget https://raw.githubusercontent.com/twossh/ADM-ULTIMATE-RS/master/hosts.txt -O /etc/payloads > /dev/null 2>&1
echo " " >> /etc/payloads
sed -i '3i\127.0.0.1 d1n212ccp6ldpw.cloudfront.net\' /etc/hosts
sleep 1
sed -i '4i\127.0.0.1 portalrecarga.vivo.com.br/recarga\' /etc/hosts
sleep 1
sed -i '5i\127.0.0.1 portalrecarga.vivo.com.br/controle\' /etc/hosts
sleep 1
sed -i '6i\127.0.0.1 navegue.vivo.com.br/pre\' /etc/hosts
sleep 1
sed -i '7i\127.0.0.1 navegue.vivo.com.br/controle\' /etc/hosts
sleep 1
sed -i '8i\127.0.0.1 /\' /etc/hosts
sleep 1
valid_fun
