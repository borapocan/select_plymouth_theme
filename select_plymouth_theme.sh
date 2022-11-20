#!/bin/bash

THEMES=/usr/share/plymouth/themes;

CONF_FILE=/etc/plymouth/plymouthd.conf;

chosen=$(ls $THEMES | gum choose);

match="Theme=$chosen";

#echo $match;

theme=$(grep -w "Theme" $CONF_FILE);

#echo "$theme";

sudo sed -i "s/$theme/$match/" $CONF_FILE;

sudo mkinitcpio -P;
