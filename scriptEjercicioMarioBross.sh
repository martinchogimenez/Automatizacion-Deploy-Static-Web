
#!/bin/bash

#variable
REPO="devops-static-web"

USERID=$(id -u)

#colores
LRED='\033[1;31m'
LGREEN='\033[1;32m'
NC='\033[0m'
LBLUE='\033[0;34m'
LYELLOW='\033[1;33m'

#Actualizando
apt-get update

echo "El servidor está actualizado"

if [ "${USERID}" -ne 0 ]; then
    echo -e "\n${LRED}Correr con usuario ROOT${NC}"
    exit
fi


if dpkg -l |grep -q git ;
then
        echo "ya esta instalado"
else
        echo "instalando paquete" 
        apt install git -y 
fi


#Instalación Apache 
if dpkg -l |grep -q apache2 ;
then
    echo "ya esta instalado"
else
        echo "instalando paquete" 
        apt install apache2 -y 
        apt install -y php libapache2-mod-php php-mysql php-mbstring php-zip php-gd php-json php-curl
        systemctl start apache2
        systemctl enable apache2
fi


if [ -d "$REPO" ] ;
then    
    echo "la carpeta $REPO existe"
else
    git clone -b devops-mariobros https://github.com/roxsross/$REPO.git
fi

echo "instalando web"
sleep 1

cp -r $REPO/* /var/www/html

