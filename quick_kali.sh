!#/bin/bash

sudo apt update -y
sudo apt upgrade -y
echo "installing gnome, please pick gdm3"
sudo apt install kali-desktop-gnome -y
echo "installing neo4j, remember to go to localhost:7474 and change password"
sudo apt install neo4j -y
echo "installing Bloodhound"
sudo apt install bloodhound -y
echo "installing remmina"
sudo apt install remmina -y
echo "installing Sublime Text"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y
echo "installing rustscan"
wget https://github.com/RustScan/RustScan/releases/download/1.10.0/rustscan_1.10.0_amd64.deb
sudo dpkg -i rustscan_1.10.0_amd64.deb
echo "uninstalling crackmapexec"
sudo apt remove crackmapexec -y
echo "installing pipx"
sudo apt install pipx -y
echo "installing netexec with pipx"
git clone https://github.com/Pennyw0rth/NetExec.git
cd netexec
pipx install . -y
echo "installing terminator"
sudo apt install terminator -y
echo "putting crackeverything into /home/kali/.local/bin"
cd ..
wget https://raw.githubusercontent.com/overgrowncarrot1/CrackEverything6/main/CrackEverything6.py
mv CrackEverything6.py /home/kali/.local/bin
echo "getting scripts and putting into scripts directory"
git clone https://github.com/overgrowncarrot1/Scripts.git
echo "getting tools and putting into tools directory"
git clone https://github.com/overgrowncarrot1/Tools.git
echo "installing impacket shutdownrepo"
git clone https://github.com/overgrowncarrot1/ShutDownRepo_Tools.git
cd ShutDownRepo_Tools/dacledit
pipx install . --force
cd /home/kali/.local/bin
echo "installing owneredit"
wget https://raw.githubusercontent.com/ShutdownRepo/impacket/owneredit/examples/owneredit.py
echo "installing targeted kerberoast.py"
wget https://raw.githubusercontent.com/ShutdownRepo/targetedKerberoast/main/targetedKerberoast.py
echo "installing pywhisker"
wget https://raw.githubusercontent.com/ShutdownRepo/pywhisker/main/pywhisker.py
echo "installing pkinit toolkit"
wget https://raw.githubusercontent.com/dirkjanm/PKINITtools/master/getnthash.py
wget https://raw.githubusercontent.com/dirkjanm/PKINITtools/master/gets4uticket.py
wget https://raw.githubusercontent.com/dirkjanm/PKINITtools/master/gettgtpkinit.py
echo "fixing oscrypto problem"
pip uninstall oscrypto -y 
pipx install git+https://github.com/wbond/oscrypto.git
pipx install impacket minikerberos --force
sudo updatedb
echo "installing flameshot"
sudo apt install flameshot -y
echo "installing obsidian"
cd /home/kali
wget https://github.com/obsidianmd/obsidian-releases/releases/download/v1.5.3/obsidian_1.5.3_amd64.deb
sudo dpkg -i obsidian_1.5.3_amd64.deb
rm -rf obsidian_1.5.3_amd64.deb
cd /home/kali/.local/bin
wget https://raw.githubusercontent.com/overgrowncarrot1/ShutDownRepo_Tools/main/dacledit/examples/dacledit.py
chmod +x dacledit.py
echo "fixing msada_guids"
wget https://raw.githubusercontent.com/byt3bl33d3r/CrackMapExec/master/cme/helpers/msada_guids.py
chmod +x msada_guids.py
cp msada_guids.py /home/kali/.local/share/pipx/venvs/impacket/bin/
cp msada_guids.py /home/kali/.local/share/pipx/venvs/impacket/lib/python3.11/site-packages/impacket/
sudo cp msada_guids.py /usr/lib/python3/dist-packages/impacket/
sudo cp msada_guids.py /usr/lib/python3/dist-packages/scapy/layers/
echo "installing kerbrute"
pipx install kerbrute
echo "pipx ensurepath"
pipx ensurepath
pipx completions
echo "Trebds and Chance... take note..."
sudo apt install keepassxc -y
echo "installing bloodhound python"
pipx install bloodhound
echo "addons"
firefox https://addons.mozilla.org/en-US/firefox/addon/foxyproxy-standard/
firefox https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/
echo "installing golang"
sudo apt install golang-go -y
echo "running nxc for the first time"
nxc --version
echo "we are done, remember this is not everything you will ever need just a lot of stuff. Restart your kali"

echo "Remember the moment you know exactly where you're going
'Cause the next moment, before you know it
Time is slowing and it's frozen still
And the window sill looks really nice, right?
You think twice about your life, it probably happens at night, right?
Fight it, take the pain, ignite it
Tie a noose around your mind, loose enough to breathe fine and tie it
To a tree, tell it, You belong to me
This aint a noose, this is a leash
And I have news for you, you must obey me"
