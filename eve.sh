if hash brew 2>/dev/null; then
        echo "Brew is here"
    else
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"        
fi

brew install ansible
ansible-playbook -i 'localhost,' --connection=local eve.yml 