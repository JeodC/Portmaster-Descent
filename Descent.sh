#!/bin/bash

if [ -d "/opt/system/Tools/PortMaster/" ]; then
  controlfolder="/opt/system/Tools/PortMaster"
elif [ -d "/opt/tools/PortMaster/" ]; then
  controlfolder="/opt/tools/PortMaster"
else
  controlfolder="/roms/ports/PortMaster"
fi

source $controlfolder/control.txt

get_controls

source $controlfolder/device_info.txt

GAME="d1x-rebirth"
GAMEDIR="/$directory/ports/descent"

cd $GAMEDIR

$ESUDO rm -rf ~/.$GAME
ln -sfv $GAMEDIR/conf/.$GAME ~/

export LIBGL_FB=4
export LD_LIBRARY_PATH=$GAMEDIR/libs:/usr/lib

# Add some cheats
if [ ! -f "./cheats.txt" ]; then
	echo "Error: Cheats file not found. No cheats will be used." > /dev/tty0
else
	CHEATS=$(sed -n -E '/^[^#]*=[[:space:]]*1([^0-9#]|$)/s/(=[[:space:]]*1[^0-9#]*)//p' ./cheats.txt | tr -d '\n')
fi

export TEXTINPUTPRESET=$CHEATS

# Edit .cfg file to correct resolution
sed -i "s/^ResolutionX=640/ResolutionX=$DISPLAY_WIDTH/g" $GAMEDIR/conf/.$GAME/descent.cfg
sed -i "s/^ResolutionY=480/ResolutionY=$DISPLAY_HEIGHT/g" $GAMEDIR/conf/.$GAME/descent.cfg

# Setup controls
$ESUDO chmod 666 /dev/tty1
$ESUDO chmod 666 /dev/uinput
if [ -n "$(sed -n '22s/^\s*;-nojoystick//p' "$GAMEDIR/d1x.ini")" ]; then
	# -nojoystick off, use sdl controls
	$GPTOKEYB "$GAME" -c "conf/joy.gptk" & 
    SDL_GAMECONTROLLERCONFIG="$sdl_controllerconfig"
else
	# -nojoystick on, use kbm controls
	$GPTOKEYB "$GAME" -c "conf/kbm.gptk" & 
fi  

# Run the game
./$GAME -hogdir data 2>&1 | tee -a ./log.txt
$ESUDO kill -9 $(pidof gptokeyb)
$ESUDO systemctl restart oga_events & 
printf "\033c" >> /dev/tty1