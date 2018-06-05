# Upgrade system
sudo apt-get update -y && sudo apt-get upgrade -y

# Install required build tools
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev
sudo apt-get install -y libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm
sudo apt-get install -y libncurses5-dev  libncursesw5-dev xz-utils tk-dev

# Download & unzip
wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz
tar xvf Python-3.6.4.tgz

# Install
cd Python-3.6.4
./configure --enable-optimizations

# Test
python3.6 -V
