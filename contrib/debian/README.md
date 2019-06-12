
Debian
====================
This directory contains files used to package cryptoconnectplusd/cryptoconnectplus-qt
for Debian-based Linux systems. If you compile cryptoconnectplusd/cryptoconnectplus-qt yourself, there are some useful files here.

## cryptoconnectplus: URI support ##


cryptoconnectplus-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install cryptoconnectplus-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your cryptoconnectplus-qt binary to `/usr/bin`
and the `../../share/pixmaps/cryptoconnectplus128.png` to `/usr/share/pixmaps`

cryptoconnectplus-qt.protocol (KDE)

