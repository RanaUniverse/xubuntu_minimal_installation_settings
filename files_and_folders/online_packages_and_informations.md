## Here is some informations of somethings i did in online...


* in my mousepad of laptop i founded the mousepad single click and scrolling was not working, so i did below.
```
sudo apt install xserver-xorg-input-synaptics
```
And just by reboot this it started working.


* When i found my windows + period(.) was not working to shows emoji picker i think to install some packages.

```
sudo apt install ibus ibus-gtk ibus-clutter ibus-gtk3 ibus-gtk4
```

```
rana-universe@rana-universe-Inspiron-3442:~/workspaces/xubuntu_minimal_installation_settings$ sudo apt install ibus ibus-gtk ibus-clutter ibus-gtk3 ibus-gtk4
[sudo] password for rana-universe: 
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  dconf-cli gir1.2-ibus-1.0 ibus-data im-config libclutter-imcontext-0.1-0 libclutter-imcontext-0.1-bin libibus-1.0-5
  python3-ibus-1.0
Suggested packages:
  ibus-doc
The following NEW packages will be installed:
  dconf-cli gir1.2-ibus-1.0 ibus ibus-clutter ibus-data ibus-gtk ibus-gtk3 ibus-gtk4 im-config libclutter-imcontext-0.1-0
  libclutter-imcontext-0.1-bin libibus-1.0-5 python3-ibus-1.0
0 upgraded, 13 newly installed, 0 to remove and 230 not upgraded.
Need to get 14.2 MB of archives.
After this operation, 139 MB of additional disk space will be used.
Do you want to continue? [Y/n] 
```
and then i reboot my system and it started work.



## Image Viewer application.
As is not any default image viewer so i will use other.

```
sudo apt install eog
```












