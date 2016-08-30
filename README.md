# capistrano-template
Capistrano Template For Symfony 3

## Setup Capistrano

### On Linux

#### Way 1:
```
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install ruby2.2 ruby2.2-dev
sudo gem install capistrano
```

#### Way 2:
```
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.2.3
rvm use 2.2.3 --default
ruby -v
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
```

### Run
```
gem install bundler
bundler install
```

### Deploy
```
cap dev deploy
cap dev deploy BRANCH=release/sprint26
```

## Reference
[https://github.com/capistrano/symfony](https://github.com/capistrano/symfony)
