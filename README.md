# CONFIG

# based on https://www.atlassian.com/git/tutorials/dotfiles

-------------------------------------------
# FIRST TIME
-------------------------------------------

# make dotfiles '.CFG' folder

mkdir ~/.CFG

git init --bare $HOME/.CFG

alias config='/usr/bin/git --git-dir=$HOME/.CFG/ --work-tree=$HOME'

config config --local status.showUntrackedFiles no

echo "alias config='/usr/bin/git --git-dir=$HOME/.CFG/ --work-tree=$HOME'" >> $HOME/.bashrc

-------------------------------------------
# ADD
-------------------------------------------

config add [name of the file]

config commit -m "[message]"

config push

NEVER config commit -a /!\

-------------------------------------------
# NEW SYTEM
-------------------------------------------
mkdir ~/.CFG

alias config='/usr/bin/git --git-dir=$HOME/.CFG/ --work-tree=$HOME'

echo ".CFG" >> .gitignore

git clone --bare https://github.com/lavomatyc/CONFIG $HOME/.CFG

mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}

config checkout

config config --local status.showUntrackedFiles no

