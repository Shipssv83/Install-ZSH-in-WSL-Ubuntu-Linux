Hi, ![](https://user-images.githubusercontent.com/18350557/176309783-0785949b-9127-417c-8b55-ab5a4333674e.gif)my name is Serhii Shypylov
=========================================================================================================================================

-------------------------------

### Socials

<p align="left"> <a href="https://github.com/Shipssv83" target="_blank" rel="noreferrer"> <picture> <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/socials/github-dark.svg" /> <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/socials/github.svg" /> <img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/socials/github.svg" width="32" height="32" /> </picture> </a> <a href="https://www.linkedin.com/in/sergey-shipilov-7262a31b4/" target="_blank" rel="noreferrer"> <picture> <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/socials/linkedin-dark.svg" /> <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/socials/linkedin.svg" /> <img src="https://raw.githubusercontent.com/danielcranney/readme-generator/main/public/icons/socials/linkedin.svg" width="32" height="32" /> </picture> </a></p>
---

# Enable WSL on Windows

Enabling WSL (Windows Subsystem for Linux) on Windows 10 is straightforward. Follow the official [Microsoft guide](https://docs.microsoft.com/en-us/windows/wsl/install) to install and set up Ubuntu. Once installed, open Ubuntu and update the packages by running:

```bash
sudo apt-get update
```

When everything is working, you can proceed to the next step.

## Install ZSH on Ubuntu

To install ZSH along with some additional tools, run the following command:

```bash
sudo apt install zsh git fonts-font-awesome
zsh
```

Follow the ZSH setup prompts to configure the shell.

## Change Default Shell to ZSH on Ubuntu

To make ZSH your default login shell, run the following commands:

```bash
chsh
/bin/zsh
```

Edit the `.bashrc` file using `vim`:

```bash
vim ~/.bashrc
```

Add the following lines immediately after the initial comments:

```bash
if test -t 1; then
  exec zsh
fi
```

Restart your Ubuntu shell. ZSH should now be your default shell.

## Install Powerline Fonts

To ensure the "agnoster" theme works properly, you need to install Powerline fonts on Windows. Follow these steps:

1. Clone the Powerline fonts repository in Windows:

   ```bash
   git clone https://github.com/powerline/fonts.git
   ```

2. Open PowerShell as Administrator, navigate to the repository root, and run:

   ```powershell
   .\install.ps1
   ```

## Configure ZSH on Ubuntu

To enhance ZSH functionality, install and configure plugins and themes.

### 1. Install Oh My Zsh

Oh My Zsh simplifies plugin and theme management for ZSH. To install it, run:

```bash
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### 2. Enable ZSH Autosuggestions

The autosuggestions plugin offers command suggestions based on history. Install it by running:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Activate the plugin by editing the `~/.zshrc` file:

```bash
vim ~/.zshrc
```

Add `zsh-autosuggestions` to the `plugins` array.

Restart your terminal and run:

```bash
zsh
```

### 3. Enable ZSH Syntax Highlighting

To add syntax highlighting, clone the repository:

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Edit the `~/.zshrc` file:

```bash
vim ~/.zshrc
```

Add `zsh-syntax-highlighting` to the `plugins` array. Restart your terminal and run:

```bash
zsh
```

### 4. Configure Powerlevel10k Theme

1. Clone the Powerlevel10k repository:

   ```bash
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
   ```

2. Update the theme in the `~/.zshrc` file:

   ```bash
   vim ~/.zshrc
   ```

   Replace the `ZSH_THEME` value with:

   ```bash
   ZSH_THEME="powerlevel10k/powerlevel10k"
   ```

3. Save the changes and restart the terminal. The Powerlevel10k configuration wizard will launch. Follow the prompts to customize your terminal appearance.

   If you want to reconfigure Powerlevel10k later, use:

   ```bash
   p10k configure
   

License
This project is licensed under the MIT License