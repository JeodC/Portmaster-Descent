# Descent 1/2 For PortMaster
The MS-DOS games by Parallax Software ported with DXX-Rebirth v0.61.

## Installation
Unzip to ports folder e.g. ```/roms/ports/```. Ready to play with shareware and demo files. To upgrade to full game, purchase on Steam/GOG and then add .hog and .pig files to descent/data and descent2/data.

Filelist for full versions:  
descent/data  
--descent.hog  
--descent.pig  
--chaos.hog (multiplayer, optional)  
--chaos.msn (multiplayer, optional)  

descent2/data  
--alien1.pig  
--alien2.pig  
--descent2.ham  
--descent2.hog  
--descent2.s11  
--descent2.s22  
--fire.pig  
--groupa.pig  
--ice.pig  
--water.pig  
--intro-h.mvl (optional)  
--other-h.mvl (optional)  
--robots-h.mvl (optional)  


## Configuration
Addon sound files are in the data folders for both games. These files (sc55 and opl3) are both available on the dxx-rebirth website. dxxr-sc55-music.dxa is used by default. To use the opl3 file instead,
add a file extension to the sc55-music file like ```d1xr-sc55-music.dxa.bak```.

Ini files d1x.ini and d2x.ini are configurable. It is recommended to not touch the Controls section of the ini files.

GPtoKeyB is used instead of SDL Joystick controls. Keys can be configured by opening the descent.gptk file in a text editor. The file is commented with the default KBM controls to make modification easier.

## To-Do: QoL Changes
[ ] Default controls (currently manually assigned by user / default pilot)  
[ ] GPToKeyB allow user to scroll through letters to create profile name and enter numbers for level select  
[x] Hotkeys to skip movies (Descent 2 intro)  
[ ] Cheats...somehow  

## Contributing
Pull requests welcome. Testing ongoing in PortMaster Discord: https://discord.gg/FDg86YtReQ.

## Thanks
dfreivald for the original port structure  
Cebion for help in meeting portmaster standards  
Testers from the PortMaster Discord  
Parallax Software for the fantastic games  
