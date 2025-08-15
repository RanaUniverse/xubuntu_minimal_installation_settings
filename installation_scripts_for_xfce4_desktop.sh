#!/bin/bash

CURRENT_DIR="$(pwd)"



mkdir -pv ~/.apps_and_softwares  
mkdir -pv ~/RanaUniverse  
mkdir -pv ~/workspaces  


echo "My manual scripts i will need to add some keyboard shortcuts, i will keep those."
cp -rv ./00_important_files/scripts_for_shortcuts/ ~/.apps_and_softwares/




cp -v 00_important_files/inside_pictures/*.png ~/Pictures
cp -v 00_important_files/inside_RanaUniverse/main.py ~/RanaUniverse/

mkdir -pv ~/Pictures/screenshots

echo "Images & Necessary Files has been Created Successfully. 🖼️"


./terminal_alias_for_me.sh


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







echo "⌨️ Now I will set up my Bucklespring for keyboard key press sound."

sudo dpkg -i 10_dependencies_bucklespring_build_from_source/*.deb



echo "Creating the directory if it doesn't already exist...🍌"

mkdir -pv ~/.apps_and_softwares

# Check for old bucklespring installation, and unzip is both connected.
echo "Checking any old bucklespring folder inside ~/.apps_and_softwares..."

if [ -d ~/.apps_and_softwares/bucklespring* ]; then
    echo "Old bucklespring folder found! Removing...🍌"
    rm -rf ~/.apps_and_softwares/bucklespring*
    echo "Old bucklespring folder removed 🍌"
else
    echo "No previous bucklespring folder found. Fresh installation will proceed...🍌"
fi


unzip -qq files_and_folders/bucklespring-*.zip -d ~/.apps_and_softwares/

echo "Bucklespring extraction completed successfully! 🎉"

cd ~/.apps_and_softwares/bucklespring*

make

./buckle &

cd "$CURRENT_DIR"

./files_and_folders/terminal_alias_for_bucklespring.sh






echo "📝 Installing Mousepad- the minimal text editor..."
sudo dpkg -i 11_dependencies_mousepad/*.deb





echo "🖼️ Installing Mugshot (About Me) to set profile images for lock screen, LibreOffice, and more..."
sudo dpkg -i 12_dependencies_mugshot/*.deb




echo "👁️ For Eye of GNOME (eog) is a image viewing app and related dependencies, it will do this using:"
sudo dpkg -i 13_dependencies_eog/*.deb




echo "Git Version Control System will be installed here."
sudo dpkg -i 14_dependencies_git/*.deb




echo "📁 Now cloning the configuration repository for custom settings which will apply my custom settings of my own useful."
echo "🔗 https://github.com/RanaUniverse/xubuntu_config_settings"


echo "✅ All selected XFCE panel plugins installed successfully!"


