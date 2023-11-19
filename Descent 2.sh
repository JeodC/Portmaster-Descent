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

GAME="d2x-rebirth"
GAMEDIR="/$directory/ports/descent2"

cd $GAMEDIR

$ESUDO rm -rf ~/.$GAME
ln -sfv $GAMEDIR/conf/.$GAME ~/

export LIBGL_FB=4
export LD_LIBRARY_PATH=$GAMEDIR/lib:/usr/lib

$ESUDO chmod 666 /dev/tty1
$ESUDO chmod 666 /dev/uinput
$GPTOKEYB "$GAME" -c "./descent.gptk" & ./$GAME -hogdir Data 2>&1 | tee -a ./log.txt
$ESUDO kill -9 $(pidof gptokeyb)
$ESUDO systemctl restart oga_events & 
printf "\033c" >> /dev/tty1