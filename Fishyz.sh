#!/bin/bash
# proyecto FishyIPz de Fishyz

banner() {
echo -e ""
echo ""
echo -e  "\e[1;32m                                        \e[0m"
echo -e  "\e[1;32m                                       \e[0m"
echo -e  "\e[1;32m          \e[0m""\e[1;30m      \e[0m"
echo -e  "\e[1;32m       _________.__       .__                  ._____________         
echo -e "\e[1;32m \_   _____/|__| _____|  |__ ___.__._______|   \______   \________
echo -e "\e[1;32m |    __)  |  |/  ___/  |  <   |  |\___   /   ||     ___/\___   /
echo -e "\e[1;32m |     \   |  |\___ \|   Y  \___  | /    /|   ||    |     /    / 
echo -e"\e[1;32m  \___  /   |__/____  >___|  / ____|/_____ \___||____|    /_____ \
echo -e     \/            \/     \/\/           \/                    \/   \e[0m""\e[1;30m     \e[0m"
echo -e  "\e[1;32m          \e[0m""\e[1;30m     \e[0m"
echo -e  "\e[1;32m          \e[0m""\e[1;30m      \e[0m"
echo 
echo -e ""
}

restartprogram() {
echo "
Esa Opción es incorrecta, elije de nuevo !
Elige entre el [ 1-2-3 ]"
sleep 2
clear
menuprincipal
}


miIP() {
	curl -s http://ip-api.com/
	echo ""
	exit
}

tarjetaip() {
	echo ""
	echo -e "\e[36m Escribe la IP de la persona \e[0m"
	echo -e "\e[1;32m╭─FishyIPz"
	read -p "╰─$ " target
	curl -s http://ip-api.com/$target
	echo -e ""
	exit
}
    
menuprincipal() {
    clear
	banner
	echo -e "\e[1;34m[\e[1;37m1\e[1;34m]\e[0m" "\e[36mInformación de mi IP\e[0m"
	echo -e "\e[1;34m[\e[1;37m2\e[1;34m]\e[0m" "\e[36mInformación de una IP\e[0m"
	echo -e "\e[1;34m[\e[1;37m3\e[1;34m]\e[0m" "\e[1;31mSalir de OVNI\e[0m"
    echo -e "\e[1;32m"
	echo -e "Elige entre el [1-2-3]"
	echo -e ""
	read -p "[+]~$ " opt
	if [ $opt -eq 1 ];
		then
			miIP
	elif [ $opt -eq 2 ];
		then
			tarjetaip                                            

	elif [ $opt -eq 3 ];
		then
			echo -e "\e[1;33m Bye gracias por usar FishyIPz"
			exit
	else
		sleep 1
		restartprogram
	fi

}


menuprincipal
