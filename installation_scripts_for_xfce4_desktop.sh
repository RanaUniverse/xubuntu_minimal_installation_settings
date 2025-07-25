#!/bin/bash



mkdir -pv ~/.apps_and_softwares  
mkdir -pv ~/RanaUniverse  
mkdir -pv ~/workspaces  



cp -v 00_important_files/inside_pictures/*.png ~/Pictures
cp -v 00_important_files/inside_RanaUniverse/main.py ~/RanaUniverse/

mkdir -pv ~/Pictures/screenshots

echo "Images & Necessary Files has been Created Successfully. 🖼️"





echo "🔧 Installing Thunar Archive Plugin (adds archive options to file manager)..."
sudo dpkg -i ./1_dependencies_thunar-archive-plugin/*.deb



echo "📋 Installing Clipman Plugin (clipboard manager for Xfce panel)..."
sudo dpkg -i ./2_dependencies_xfce4-clipman-plugin/*.deb



echo "📊 Installing System Load Plugin (shows CPU, RAM, network usage in panel)..."
sudo dpkg -i ./3_dependencies_xfce4-systemload-plugin/*.deb



echo "👀 Installing Eyes Plugin (eyes follow your cursor on the panel)..."
sudo dpkg -i ./4_dependencies_xfce4-eyes-plugin/*.deb


echo "📶 Installing Wi-Fi Support (kernel headers, build tools, Broadcom driver)..."
sudo dpkg -i ./5_dependencies_wifi/*.deb


echo "🔵 Installing Bluetooth Support (Blueman and related tools)..."
sudo dpkg -i ./6_dependencies_bluetooth-blueman/*.deb

echo "Befor install the another bluetooth related package i need to remove some packages which must need so that it will not be any problem."

sudo apt remove -y pulseaudio pulseaudio-module-bluetooth


echo "🔊 Installing PipeWire Audio Support (PipeWire and PulseAudio replacement)..."
sudo dpkg -i ./7_dependencies_pipewire-audio/*.deb



echo "🧩 Installing Docklike Panel Plugin (XFCE Docklike Taskbar)..."
sudo dpkg -i 8_dependencies_xfce4-docklike-plugin/xfce4-docklike-plugin_*.deb 



echo "🌙 Installing Redshift for Night Light functionality..."
sudo dpkg -i 9_dependencies_redshift/*.deb

echo "📌 Adding terminal shortcuts to start & stop Redshift..."
./files_and_folders/terminal_alias_for_redshift.sh 

echo "✅ Redshift has been installed successfully!"












echo "✅ All selected XFCE panel plugins installed successfully!"









