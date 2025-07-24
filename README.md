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



<!-- Bluetooth will work now on this laptop on this os -->
### sudo apt install blueman pipewire-audio 

```
sudo apt-get install --print-uris --yes blueman pipewire-audio | grep ^\' | cut -d\' -f2 > 6_packages_bluetooth.txt

mkdir 6_dependencies_bluetooth

cd 6_dependencies_bluetooth

wget -i ../6_packages_bluetooth.txt
```

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






