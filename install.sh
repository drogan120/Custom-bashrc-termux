#!/data/data/com.termux/files/usr/bin/bash
menu(){
clear
echo "============================= Customize Termux V 0.0.1 ==========================="
echo "=================================================================================="
echo "=================================== Version 0.0.1 ================================"
echo "Menu : "
echo ""
echo "1.Complete Install"
echo "2.Remove "
echo "3.Configure"
echo "9.Quit"
echo ""
echo "============================= Created By Drogan120 =============================="
echo "================================ Version 0.0.1 =================================="
read -p "Pilih yg ingin anda lakukan  ? [1,2,3,9] : " ans;


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
			;;
		3) 
			clear
			echo "Configure ......"
			sleep 1
			configure
			;;
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
			cp bash/bash1 ~/.bashrc
			;;
		2) 
		clear
		
			echo "anda memilih Neofetch  ... " 
			echo "tunggu sebentar ......"
			sleep 1
			pkg install neofetch
			cp bash/bash2 ~/.bashrc
			;;

		3) 
			clear
			echo "anda memilih sl "
			echo "tunggu sebentar ......"
			sleep 1
			pkg install sl
			cp bash/bash3 ~/.bashrc
			exit
			;;
		
		4) 
			clear
			echo "anda memilih Cowsay  "
			echo "tunggu sebentar ......"
			sleep 1
			pkg install cowsay
			cp bash/bash4 ~/.bashrc
			exit
			;;
		
		5) 
			clear
			echo "anda memilih fortune  "
			echo "tunggu sebentar ......"
			sleep 1
			pkg install fortune
			cp bash/bash5 ~/.bashrc
			exit
			;;
		
		6) 
			clear
			echo "anda memilih Toilet  "
			echo "tunggu sebentar ......"
			sleep 1
			pkg install toilet
			cp bash/bash6 ~/.bashrc
			exit
			;;
		
		*)
		echo "Invalid Options" 
		configure
		;;
   esac
}

menu
