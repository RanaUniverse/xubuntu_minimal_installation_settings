# Xubuntu Minimal Installation


I will try to achieve the settings i will use so that i can get my own custom os design and useful 



# The Steps i am following...

```
sudo dpkg -i *.deb
```

## 1. sudo apt install thunar-archive-plugin

```
sudo apt-get install --print-uris --yes thunar-archive-plugin | grep ^\' | cut -d\' -f2 > 1_packages_thunar-archive-plugin.txt

mkdir 1_dependencies_thunar-archive-plugin

cd 1_dependencies_thunar-archive-plugin

wget -i ../1_packages_thunar-archive-plugin.txt
```


## 2. sudo apt install xfce4-clipman-plugin

```
sudo apt-get install --print-uris --yes xfce4-clipman-plugin | grep ^\' | cut -d\' -f2 > 2_packages_xfce4_-clipman-plugin.txt

mkdir 2_dependencies_xfce4-clipman-plugin

cd 2_dependencies_xfce4-clipman-plugin

wget -i ../2_packages_xfce4_-clipman-plugin.txt 
``` 



### 3. sudo apt install xfce4-systemload-plugin

```
sudo apt-get install --print-uris --yes xfce4-systemload-plugin | grep ^\' | cut -d\' -f2 > 3_packages_xfce4-systemload-plugin.txt

mkdir 3_dependencies_xfce4-systemload-plugin

cd 3_dependencies_xfce4-systemload-plugin

wget -i ../3_packages_xfce4-systemload-plugin.txt
```


### 4. sudo apt install xfce4-eyes-plugin

```
sudo apt-get install --print-uris --yes xfce4-eyes-plugin | grep ^\' | cut -d\' -f2 > 4_packages_xfce4-eyes-plugin.txt

mkdir 4_dependencies_xfce4-eyes-plugin

cd 4_dependencies_xfce4-eyes-plugin

wget -i ../4_packages_xfce4-eyes-plugin.txt
```


<!-- Below will use to wifi will work from now. -->
### sudo apt install linux-headers-$(uname -r) build-essential bcmwl-kernel-source

```
sudo apt-get install --print-uris --yes linux-headers-$(uname -r) build-essential bcmwl-kernel-source | grep ^\' | cut -d\' -f2 > 5_packages_wifi.txt

mkdir 5_dependencies_wifi

cd 5_dependencies_wifi

wget -i ../5_packages_wifi.txt
```





### For Bluetooth Connections i need to follow the below things.
Below is the reasons and some information about the bluetooth settings...

```
✅🔧 **Working setup:**
sudo apt install blueman

🎯🎧 **Solved connection issues (phone & headphone):**
sudo apt install pipewire-audio 

❓🤔 **Not tested (might not be needed, maybe for future):**
sudo apt install pipewire-pulse

✅📦 **Already installed:**
sudo apt install bluez
sudo apt install wireplumber

📦🚫 **Included in Blueman (no need to install separately):**
sudo apt install pulseaudio-module-bluetooth
```




### sudo apt install blueman 

```
sudo apt-get install --print-uris --yes blueman  | grep ^\' | cut -d\' -f2 > 6_packages_bluetooth.txt

mkdir 6_dependencies_bluetooth-blueman

cd 6_dependencies_bluetooth-blueman

wget -i ../6_packages_bluetooth-blueman.txt
```




### sudo apt install pipewire-audio 

```
sudo apt-get install --print-uris --yes pipewire-audio | grep ^\' | cut -d\' -f2 > 7_packages_pipewire-audio.txt

mkdir 7_dependencies_pipewire-audio

cd 7_dependencies_pipewire-audio

wget -i ../7_packages_pipewire-audio.txt
```


Below will do after upper is done.
```
The following packages will be REMOVED:
  pulseaudio pulseaudio-module-bluetooth
  
sudo apt remove pulseaudio pulseaudio-module-bluetooth

```



### 4. sudo apt install xfce4-eyes-plugin

```
sudo apt-get install --print-uris --yes xfce4-eyes-plugin | grep ^\' | cut -d\' -f2 > 4_packages_xfce4-eyes-plugin.txt

mkdir 4_dependencies_xfce4-eyes-plugin

cd 4_dependencies_xfce4-eyes-plugin

wget -i ../4_packages_xfce4-eyes-plugin.txt
```



How to install the Docklike Apps in the panel will work how?


```
sudo add-apt-repository ppa:xubuntu-dev/extras
sudo apt update
sudo apt install xfce4-docklike-plugin
```

The Download link for this i have. 
Direct Download Link of [Docklike Panel Plugin](https://ppa.launchpadcontent.net/xubuntu-dev/extras/ubuntu/pool/main/x/xfce4-docklike-plugin/xfce4-docklike-plugin_0.4.2-0ppa1~bpo24.04_amd64.deb
)

[The Offline File is This.](./files_and_folders/some_packages/xfce4-docklike-plugin_0.4.2-0ppa1~bpo24.04_amd64.deb)

```
sudo dpkg -i files_and_folders/some_packages/xfce4-docklike-plugin_0.4.2-0ppa1~bpo24.04_amd64.deb 
```

