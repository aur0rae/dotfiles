#!/usr/bin/env bash

# This sucks but it's probably good enough for me

sudo pacman -S --noconfirm sway swaybg swayidle swaylock wmenu brightnessctl foot dolphin \
                           ark mpv yt-dlp mpd ncmpcpp bat eza fzf zoxide kdenlive obs-studio \
                           prismlauncher steam breeze

cp -r config/* $HOME/.config/
mkdir -p ~/.local/state/mpd/

systemctl enable --user --now mpd.socket

