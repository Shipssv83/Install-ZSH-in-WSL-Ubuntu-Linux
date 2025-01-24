#!/bin/bash

# Display ASCII art for branding or fun
echo "
 SSSSSSS  EEEEEEE  RRRRRR   HHH   HHH IIIIIIII IIIIIIII
 SSS      EEE      RRR  RR  HHH   HHH    III     III
 SSSSSS   EEEEE    RRRRRR   HHHHHHHHH    III     III
     SSS  EEE      RRR  RR  HHH   HHH    III     III
 SSSSSSS  EEEEEEE  RRR   RR HHH   HHH IIIIIIII IIIIIIII

 SSSSSSS  HHH   HHH YYY   YYY PPPPPP   YYY   YYY LLL      OOOOOOO  VVV     VVV
 SSS      HHH   HHH  YYY YYY  PPP  PP   YYY YYY  LLL      OOO OOO   VVV   VVV
 SSSSSS   HHHHHHHHH   YYYYY   PPPPPP     YYYYY   LLL      OOO OOO    VVV VVV
     SSS  HHH   HHH    YYY    PPP        YYY     LLL      OOO OOO     VVVV
 SSSSSSS  HHH   HHH    YYY    PPP        YYY     LLLLLLL  OOOOOOO      VV

      11   iii tttttttt      pppppp  rrrrrrr   ooooooo
      11         ttt         pp   pp rr   rr  oo     oo
      11   iii   ttt   ..... pppppp  rr  rrr  oo     oo
      11   iii   ttt         pp      rr   rr  oo     oo
      11   iii   ttt         pp      rr    rr  ooooooo
"

# Update system packages and install required tools
sudo apt update && sudo apt upgrade -y
sudo apt install -y zsh git fonts-font-awesome wget

# Install Oh My Zsh framework for Zsh customization
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Clone useful plugins for Zsh
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting

# Update .zshrc to enable plugins
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Install Powerlevel10k theme for Zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM}/themes/powerlevel10k

# Update .zshrc to set Powerlevel10k as the default theme
sed -i 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k\\/powerlevel10k"/' ~/.zshrc

# Restart Zsh to apply all changes
exec zsh
