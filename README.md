<h1 align="center">Minimal Hyprland Install Script</h1>
<h3 align="center">By</h3>
<h2 align="center">Shell Ninja</h2>
<br>

This Hyprland configuration is kind of minila looking, but also little bit gorgeous I guess. Why don't you check it out?

> [!WARNING]
> This script is fully ready, but it may create some little issue in `openSUSE`. I'll fix that as soon as possible.

> [!NOTE]
> The dotfile used in this script is a rolling release config. I fix issues and add features very often. Just to update in the latest commits, you have to use `SUPER Shift U` keybind. It will update to the latest [hyprconf](https://github.com/shell-ninja/hyprconf) configuration and restore the cache.

## Screenshots

<details close>
<summary>Overall</summary>
<p align="center">
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/theme/1.png?raw=true" />
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/theme/2.png?raw=true" /> <br>

   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/theme/3.png?raw=true" />
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/theme/4.png?raw=true" />
</p> <br>
</details>

<details close>
<summary>Menu</summary>
<p align="center">
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/menu/1.png?raw=true" />
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/menu/2.png?raw=true" /> <br>

   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/menu/4.png?raw=true" />
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/menu/3.png?raw=true" />
    <br>

   <img aligh="center" width="99%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/clipboard.png?raw=true" />
</p> <br>
</details>

<details close>
<summary>Power Menu</summary>
<p align="center">
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/power/1.png?raw=true" />
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/power/2.png?raw=true" /> <br>

   <img aligh="center" width="99%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/power/3.png?raw=true" />
</p> <br>
</details>

<details close>
<summary>Wallpaper</summary>
<p align="center">
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/wallpaper/1.png?raw=true" />
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/wallpaper/2.png?raw=true" /> <br>

   <img aligh="center" width="99%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/wallpaper/3.png?raw=true" />
</p> <br>
</details>

<details close>
<summary>Lock Screen</summary>
<p align="center">
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/lockscreen/lock-1.png?raw=true" />
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/lockscreen/lock-2.png?raw=true" />
        <br>
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/lockscreen/lock-3.png?raw=true" />
   <img aligh="center" width="49%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/lockscreen/selecttheme.png?raw=true" />
</p>
</details>

<details close>
<summary>Login Screen (sddm)</summary>
<p align="center">
   <img aligh="center" width="99%" src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/sddm/sddm_theme.jpg?raw=true" />
</p>
</details>

<br>

## Features

- Dynamic Wallpaper changing script
- Change colors according to the changed wallpaper (pywal)
- Select and Open apps using Rofi app launcher
- Gorgeous looking Waybar styles
- Rofi app launcher styles
- Rofi power menu
- Locking with Hyprlock
- Set your user image in Hyprlock ( a script `~/.config/hypr/add_user.sh` to set your user image )
- Hypridle to handle auto lock and suspend when no action is runnin
- Hyprsunset to use nightlight, `SUPER` + F1 to increase, `SUPER` + F2 to decrease and `SUPER` + F3 to set to default
  <br>

## Installation

### Direct Installation

You can now easily install the config directly without cloning the repository. Just copy and paste the command bellow in your terminal and run it. Before that, make sure to install `curl`. Install it using pacman, dnf or zypper.

```
bash <(curl -s https://raw.githubusercontent.com/shell-ninja/hyprconf-install/main/direct_run.sh)
```

### Manusally Installation

- Clone this repository:

  ```
  git clone --depth=1 https://github.com/shell-ninja/hyprconf-install.git
  ```

- Now cd into hyprconf-install directory and run this command.:
  ```
  cd ~/hyprconf-install
  chmod +x install.sh
  ./install.sh
  ```

### Prompts

<details close>
<summary>Installation Prompts</summary>

When you run the script, it will ask you some prompts. You can choose according to your need. You can choose multiple options using the space bar.

<img src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/install/1.png?raw=true" /> <br>

</details>

<details close>
<summary>Install Shell</summary>

You can choose which shell you want to install (only one). Install customized [zsh](https://github.com/shell-ninja/Zsh) or `fish`. If you choose `setup_bash`, it will Set up my configured [bash](https://github.com/shell-ninja/Bash).

<img src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/install/2.png?raw=true" /> <br>

</details>

<details close>
<summary>Install Browser</summary>

You have the freedom to choose a web browser. I you don't want to install any, you can simply skip it.

<img src="https://github.com/shell-ninja/Screen-Shots/blob/main/hyprconf/install/3.png?raw=true" />
<br>
</details>

<br>

> [!IMPORTANT]
>
> ## Keyboard Shortcuts
>
> After installation, just press the `SUPER + Shift + h`. It will show you all the keybinds.

## Contribute.

<h4>
If you want to add your ideas in this project, just do some steps.
</h4>

1. Fork this repository. Make sure to uncheck the `Copy the main branch only`. This will also copy other branches ( if available ).
2. Now clone the forked repository in you machine. <br> Example command:

```
git clone --depth=1 https://github.com/your_user_name/hyprconf.git
```

3. Create a branch by your user_name. <br> Example command:

```
git checkout -b your_user_name
```

4. Now add your ideas and commit to github. <br> Make sure to commit with a detailed test message. For example:

```
git commit -m "fix: Fixed a but in the "example.sh script"
```

```
git commit -m "add: Added this feature. This will happen if the user do this."
```

```
git commit -m "delete: Deleted this. It was creating this example problem"
```

4. While pushing the new commits, make sure to push it to your branch. <br> For example:

```
git push origin your_branch_name
```

5. Now you can create a pull request in the main repository.<br> But make sure to create the pull request in the `development` branch, no the `main` branch.

### Thats all about contributing.

## Reference

#### I would like to thank [JaKooLit](https://github.com/JaKooLit). I was inspired from his Hyprland installation scripts and prepared my script. I took and modified some of his scripts and used here.
