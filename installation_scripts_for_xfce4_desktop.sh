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



echo "✅ All selected XFCE panel plugins installed successfully!"





