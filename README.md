# Xubuntu Minimal Installation


I will try to achieve the settings i will use so that i can get my own custom os design and useful 



# The Steps i am following...


## sudo apt install thunar-archive-plugin

```
sudo apt-get install --print-uris --yes thunar-archive-plugin | grep ^\' | cut -d\' -f2 > 1_packages_thunar-archive-plugin.txt

mkdir 1_dependencies_thunar-archive-plugin

cd 1_dependencies_thunar-archive-plugin

wget -i ../1_packages_thunar-archive-plugin.txt

```