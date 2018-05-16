 #!/bin/bash
    	echo "Bash para automatizar a instalação dos pacotes que uso no Debian"
    	echo "################################################################"
	
	echo "INSTALANDO O SNAPD"
	apt-get install snap
	apt-get install snapd snapd-xdg-open
	
	echo "install rar"
	apt-get install rar

	snap install gnome-system-monitor
	echo "########################CHROME##################################"
	
	apt-get install vim
	echo "install git"
	apt-get install git
	
	echo "install VLC"
	snap install vlc
	echo "APACHE + PHP"
	apt install apache2 libapache2-mod-php7.0 php7.0 mariadb-client mariadb-server phpmyadmin
	
	echo "composer"
	apt-get install composer -y


	echo "##PYTHON + PIP"
	apt-get install python3-dev python3-pip libacl1-dev

	echo "PYCHARM"
	snap install pycharm-professional --classic
	
	echo "PHPSTORM"
	snap install phpstorm --classic
	
	echo "SPOTFY"
	snap install spotify

	echo "Slack"
	snap install slack
	
	echo "atualizar repositorios"
	apt-get update && apt-get upgrade

	echo "stremio"
	exit
	wget "https://www.strem.io/download?platform=linux&four=true" -O stremio.appimage
	chmod +x stremio.appimage
	./stremio.appimage


	echo"instalando o php e seus recursos para o Laravel"
	apt install ca-certificates apt-transport-https 
	wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
	echo "deb https://packages.sury.org/php/ stretch main" | tee /etc/apt/sources.list.d/php.list
	
	echo "agora vou instalar o PHP"
	apt update
	apt install php7.2
	apt install php7.2-cli php7.2-common php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-mysql php7.2-xml
	
	echo"composer"
	php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 	'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
	php composer-setup.php
	php -r "unlink('composer-setup.php');"
	
	echo "a versão do composer instalado é:"
	php composer-setup.php --version=1.0.0-alpha8
	

		
