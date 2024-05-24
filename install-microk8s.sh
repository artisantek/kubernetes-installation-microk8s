#/bin/bash

echo "################################################################"
echo "#                                                              #"
echo "#                     ***Artisan Tek***                        #"
echo "#                   MicroK8S Installlation                     #"
echo "#                                                              #"
echo "################################################################"

echo "     STEP 1: Installing MicroK8S"
#Install MicroK8s on Linux
sudo snap install microk8s --classic > /dev/null 2>&1
echo "            -> Done"

echo "     STEP 2: Giving Ubuntu user permission for MicroK8S"
#Adding user to the microk8s admin group
sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
echo "            -> Done"

echo "     STEP 3: Creating Alias for mkctl"
echo "alias kubectl='microk8s kubectl'" >> "$HOME/.bashrc"
source "$HOME/.bashrc"
echo "            -> Done"

echo "     STEP 4: Reloading Session"
exec sudo su ubuntu
echo "            -> Done"
