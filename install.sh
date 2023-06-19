#!/bin/bash

cd /tmp
sudo apt install gcc curl linux-headers-$(uname -r)
# install vscode
command -v code >/dev/null 2>&1 || wget https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb && sudo dpkg -i vscode.deb
# test vscode install
command -v code arg.txt >/dev/null 2>&1 || { echo >&2 "/!\ Problem with vscode installation. Aborting."; exit 1; }

# install vmware workstation pro
command -v vmware >/dev/null 2>&1 || curl -J -L https://www.vmware.com/go/getworkstation-linux -A "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0" -o vmware.bundle && chmod +x vmware.bundle && sudo ./vmware.bundle

