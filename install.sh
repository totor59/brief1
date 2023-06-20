#!/bin/bash

cd /tmp

# requirements
sudo apt install build-essential gcc curl linux-headers-$(uname -r)

# install vscode
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb && sudo dpkg -i vscode.deb

# install vmware workstation pro
curl -J -L https://www.vmware.com/go/getworkstation-linux -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" -o vmware.bundle && chmod +x vmware.bundle && sudo ./vmware.bundle

# run vscode & vmware for test & post installation
code arg.txt &
vmware-installer &

# clean
rm /tmp/vscode.deb
rm /tmp/vmware.bundle
