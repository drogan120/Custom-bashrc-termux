#!/data/data/com.termux/files/usr/bin/bash

menu(){

echo "============================= Customize Termux V 0.0.1 ==========================="
echo "=================================================================================="
echo "=================================== Version 0.0.1 ================================"
echo "Menu : "
echo ""
echo "1.Complete Install"
echo "2.Remove "
echo "9.Quit"
echo ""
echo "============================= Created By Drogan120 =============================="
echo "================================ Version 0.0.1 =================================="
read -p "Pilih yg ingin anda lakukan  ? [1,2,9] : " ans;


			case $ans in
		1) 
			clear
			echo "tunggu sebentar ......"
			apt update
			apt upgrade
			apt install ruby
			apt install figlet
			sleep 2
			configure 
			;;
		2) 
			clear
			echo "menghapus file configurasi ......"
			sleep 1
			rm ~/.bashrc
			menu
		9) 
			echo "Menutup aplikasi ....... "
			clear
			sleep 2
			exit
			;;
		*)
		echo "Invalid Options" 
		menu
		;;
   esac
}

configure(){

		clear
		sleep 2
		echo "1. lolcat " 
		echo "2. Neofetch "
		echo "3. Sl "
		echo "4. Cowsay "
		echo "5. Fortune"
		echo "6. Toilet "
		read -p "Pilih Type yg anda suka  ? [1,2,3] : " ans1;


			case $ans1 in
		1) 
			clear
			echo "anda memilih figlet dan lolcat ... "
			echo "tunggu sebentar ......"
			sleep 1
			gem install lolcat
			cd
			rm ~/.bashrc
			cat > .bashrc << "EOF"
			clear 
			figlet Noob | lolcat  
			date | lolcat 
			EOF
			;;
		2) 
			clear
			echo "anda memilih Neofetch  ... " 
			echo "tunggu sebentar ......"
			sleep 1
			pkg install neofetch
			cd
			rm ~/.bashrc
			cat > .bashrc << "EOF"
			clear 
			neofetch 
			EOF
			;;

		3) 
			clear
			echo "anda memilih sl "
			echo "tunggu sebentar ......"
			sleep 1
			pkg install sl
			cd
			rm ~/.bashrc
			cat > .bashrc << "EOF"
			clear 
			sl
			clear
			EOF
			;;
		
		5) 
			clear
			echo "anda memilih Cowsay  "
			echo "tunggu sebentar ......"
			sleep 1
			pkg install cowsay
			cd
			rm ~/.bashrc
			cat > .bashrc << "EOF"
			clear 
			fortune | lolcat
			clear
			EOF
			;;
		
		5) 
			clear
			echo "anda memilih fortune  "
			echo "tunggu sebentar ......"
			sleep 1
			pkg install fortune
			cd
			rm ~/.bashrc
			cat > .bashrc << "EOF"
			clear 
			fortune | lolcat
			clear
			EOF
			;;
		
		6) 
			clear
			echo "anda memilih Toilet  "
			echo "tunggu sebentar ......"
			sleep 1
			pkg install toilet
			cd
			rm ~/.bashrc
			cat > .bashrc << "EOF"
			clear 
			toilet -f mono12 -F metal Noob
			clear
			EOF
			;;
		
		*)
		echo "Invalid Options" 
		menu
		;;
   esac
}

menu