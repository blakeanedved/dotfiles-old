if ! command -v node &> /dev/null
then
	echo "You must install NodeJS to use this configuration, please install before running deployment script"
    exit
fi

echo "Installing global npm packages before starting deployment"
npm install -g fs path fx pure browser-sync &> /dev/null
~/dotfiles/zsh/plugins/fzf/install &> /dev/null
node install.js
