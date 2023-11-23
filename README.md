# Descent 1/2 For PortMaster
The MS-DOS games by Parallax Software ported with DXX-Rebirth v0.61.

![image](https://github.com/JeodC/Portmaster-Descent/assets/47716344/a4565b0e-88c8-4dad-b00d-1b02b35e8a71)

## Description
Play as a mercenary sent into planetary mines to destroy them before a computer virus spreads! You'll fly through 3D mazes in search of keycards to gain access to each level's reactor--which, once destroyed, will begin a self-destruct! Make sure you know where the exit hatch is! It will only open when the reactor is destroyed. Oh, and watch out for those virus-infected robots. They'll shoot at you.

<img src="https://github.com/JeodC/Portmaster-Descent/assets/47716344/730189b3-fa8c-4844-a4e9-cf7266e138a2" width="320" height="240"/>


## Installation
Unzip to ports folder e.g. ```/roms/ports/```. Ready to play with shareware and demo files. To upgrade to full game, purchase on Steam/GOG and then add .hog and .pig files to descent/data and descent2/data.

Filelist for full versions:  
├── descent/data  
│   ├── missions/    
│   │ └── bonuscontent   
│   └── descent.hog  
│   └── descent.pig  
│   └── chaos.hog (multiplayer, optional)  
│   └── chaos.msn (multiplayer, optional)  
├── descent2/data  
│   ├── missions/    
│   │ └── bonuscontent   
│   └── alien1.pig  
│   └── alien2.pig  
│   └── descent2.ham  
│   └── descent2.hog  
│   └── descent2.s11  
│   └── descent2.s22  
│   └── fire.pig  
│   └── groupa.pig  
│   └── ice.pig  
│   └── water.pig  
│   └── intro-h.mvl (optional)  
│   └── other-h.mvl (optional)  
│   └── robots-h.mvl (optional)  
│   └── d2x-h.mvl (optional)  

Descent I & II: Definitive Edition came with some extra content not available on GOG or Steam. These include Levels of the World (Descent 1), 29 Bonus Levels by Parallax Software (Descent 1), and the Descent 2: Vertigo expansion pack. This extra content can be placed in the data/missions folder for both Descent and Descent 2. If done correctly you'll see a new submenu when selecting New Game.

<img src="https://github.com/JeodC/Portmaster-Descent/assets/47716344/2bb314e7-6365-458e-9568-739c31eef983" width="300" height="300"/>

## Configuration
Addon sound files are in the data folders for both games. These files (sc55 and opl3) are both available on the dxx-rebirth website. dxxr-sc55-music.dxa is used by default. To use the opl3 file instead,
add a file extension to the sc55-music file like ```d1xr-sc55-music.dxa.bak```.

Ini files d1x.ini and d2x.ini are configurable. It is recommended to not touch the Controls section of the ini files.

Keyboard and mouse emulation is used via GPtoKeyB. The file descent.gptk can be opened and modified as user sees fit, but the current assigned keys are recommended for level select. Instead, controls should be modified within the games themselves via Options->Configure Keyboard.

## Default Gameplay Controls

| Button | Action |
|--|--| 
|A|Primary Fire|
|B|Deploy Bomb|
|X|Secondary Fire|
|Y|Fire Flare|
|L1|Reverse|
|L2|Cycle Secondary Weapon|
|L3|Not Set|
|R1|Accelerate|
|R2|Scroll Primary Weapon|
|R3|Not Set|
|D-PAD UP|Look Up|
|D-PAD DOWN|Look Down|
|D-PAD LEFT|Turn Left|
|D-PAD RIGHT|Turn Right|
|LEFT ANALOG|Look Around|
|RIGHT ANALOG UP|Not Set|
|SELECT|Back / Escape|
|START|Start / Accept / Enter|

## Level Select Controls

| Button | Action |
|--|--| 
|B|0|
|Y|1|
|X|2|
|L1|3|
|L2|4|
|R1|5|
|R2|6|

## To-Do: QoL Changes 
[ ] Cheats...somehow  

## Contributing
Pull requests welcome. Testing ongoing in <a href="https://discord.gg/FDg86YtReQ">PortMaster Discord</a>.

Since DXX-Rebirth is used as the wrapper for the games, you may encounter some bugs in gameplay that are beyond our control. Please use the <a href="https://github.com/dxx-rebirth/dxx-rebirth">DXX-Rebirth Github Repo</a> to track and report issues.

## Thanks
Anberports Team for the original port structure  
Cebion for help in meeting portmaster standards  
Testers and Devs from the PortMaster Discord  
Parallax Software for the fantastic games  
<a href="https://www.dxx-rebirth.com/">DXX-Rebirth</a> Team for the fantastic wrapper (and screenshots)  
