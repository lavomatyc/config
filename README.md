# CONFIG

# based on https://www.atlassian.com/git/tutorials/dotfiles

-------------------------------------------
# FIRST TIME
-------------------------------------------

# make dotfiles '.cfg' folder

mkdir ~/.cfg

git init --bare $HOME/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

config config --local status.showUntrackedFiles no

echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

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
mkdir ~/.cfg

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

echo ".cfg" >> .gitignore

git clone --bare https://github.com/lavomatyc/config $HOME/.cfg

/!\ do not use ---- mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}

config checkout

config config --local status.showUntrackedFiles no

