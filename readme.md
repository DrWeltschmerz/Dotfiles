Customized configs of some part of my linux setup 
* First and foremost - I use https://github.com/JaKooLit/Hyprland-Dots/wiki JaKooLit dotfiles as a baseline setup for my hyprland setup.
* For Kitty theme I use Rose Pine Moon
* waybar theme is based on everforest, I customized it to suit my needs and show only stuff that i'm interested in (so no wireless connection, battery etc. - i'm using desktop pc)
* Due to the fact that i'm using OLED screen - my waybar is by default hidden, I can show/hide it with keybind
```
bind = $mainMod, R, exec, pkill -USR1 waybar
```