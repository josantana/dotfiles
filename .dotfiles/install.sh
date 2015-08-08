## INSTALL

# Backing up previous Bash Profile
mv ~/.bash_profile ~/.dotbackup/.bash_profile && mv ~/.bashrc ~/.dotbackup/.bashrc_backup

# Clone repository to user's root folder
cd; curl --silent -#L "https://github.com/josantana/dotfiles/tarball/master" | tar -xzv --strip-components 1 --exclude={LICENSE,README.md,install.sh,sync.sh}

# Z directory jumping (https://github.com/rupa/z)
curl -O "https://raw.githubusercontent.com/rupa/z/master/z.sh" && mv z.sh ~/.dotfiles/z.sh

# Homebrew for the homeless
if [ -z "$(which brew)" ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Run OSX scripts
source ~/.dotfiles/.brew
source ~/.dotfiles/.osx

# Remove scripts
rm -rf ~/.dotfiles/.brew
rm -rf ~/.dotfiles/.osx
