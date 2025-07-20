# Xubuntu Minimal Installation


I will try to achieve the settings i will use so that i can get my own custom os design and useful 



# The Steps i am following...

`sudo dpkg -i *.deb`

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



