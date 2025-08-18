#!/bin/bash

#### Advanced Hyprland Installation Script by ####
#### Shell Ninja ( https://github.com/shell-ninja ) ####

# color defination
red="\e[1;31m"
green="\e[1;32m"
yellow="\e[1;33m"
blue="\e[1;34m"
magenta="\e[1;1;35m"
cyan="\e[1;36m"
orange="\e[1;38;5;214m"
end="\e[1;0m"

display_text() {
    gum style \
        --border rounded \
        --align center \
        --width 60 \
        --margin "1" \
        --padding "1" \
'
   ___           __ 
  / _ )___ ____ / / 
 / _  / _ `(_-</ _ \
/____/\_,_/___/_//_/
                     
'
}

clear && display_text
printf " \n \n"

###------ Startup ------###

dir="$(dirname "$(realpath "$0")")"
parent_dir="$(dirname "$dir")"
source "$parent_dir/interaction_fn.sh"

cache_dir="$parent_dir/.cache"

log_dir="$parent_dir/Logs"
log="$log_dir/bash-$(date +%d-%m-%y).log"
mkdir -p "$log_dir"
touch "$log"

# check if there is a .bash directory available. if available, then backup it.
if [ -d ~/.bash ]; then
    msg nt "A ${green}.bash${end} directory is available. Backing it up.." && sleep 1

    mv ~/.bash ~/.bash-${USER} 2>&1 | tee -a "$log" &> /dev/null
    msg dn ".bash directory was backed up successfully!" 
fi

# now install bash

url="https://github.com/shell-ninja/Bash/archive/refs/heads/main.zip"
target_dir="$parent_dir/.cache/Bash"
zip_path="$target_dir.zip"

# Download the ZIP silently with a progress bar
curl -L "$url" -o "$zip_path"

if [[ -f "$zip_path" ]]; then
    mkdir -p "$target_dir"
    unzip "$zip_path" "Bash-main/*" -d "$target_dir" > /dev/null
    mv "$target_dir/Bash-main/"* "$target_dir" && rmdir "$target_dir/Bash-main"
    rm "$zip_path"
fi

if [[ -d "$parent_dir/.cache/Bash" ]]; then
    cd "$parent_dir/.cache/Bash" || msg err "Could not cd into $parent_dir/.cache/Bash" 2>&1 | tee -a >(sed 's/\x1B\[[0-9;]*[JKmsu]//g' >> "$log")
    chmod +x install.sh 2>&1 | tee -a "$log"
    ./install.sh 2>&1 | tee -a "$log"
    exit 0
else
    msg err "Could not fined $parent_dir/.cache/Bash. exiting.."
    exit 1
fi

clear
