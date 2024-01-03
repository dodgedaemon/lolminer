#!/bin/bash

echo "-------------------------"
echo "       GMINER          "
echo "    STARTING INSTALL     "
echo "-------------------------"

sudo apt -y upgrade > /dev/null 2>&1
echo "STEP 1 of 9: Completed Packages Update"

# sudo apt -y install ocl-icd-opencl-dev > /dev/null 2>&1
echo "STEP 2 of 9: Installed OpenCL"

sudo apt -y install nano  > /dev/null 2>&1
echo "STEP 3 of 9: Installed Nano"

sudo apt -y install screen  > /dev/null 2>&1
echo "STEP 4 of 9: Installed Screen"

echo "STEP 5 of 9: Downloading GMiner"
sudo wget https://github.com/bzminer/bzminer/releases/download/v19.2.1/bzminer_v19.2.1_linux.tar.gz > /dev/null 2>&1

echo "STEP 6 of 9: Extracting GMiner"
sudo tar -xvf bzminer_v19.2.1_linux.tar.gz > /dev/null 2>&1

echo "STEP 7 of 9: Changing Directory"
cd bzminer_v19.2.1_linux

echo "STEP 8 of 9: Updating Wallet Address in clore.sh"
sed -i 's|./bzminer -a clore -w 0000 -p stratum+ssl://stratum-eu.rplant.xyz:17083 --nc 1|./bzminer -a clore -w AaydahECg6JCZijx3z6xNsYWg78MUH1K1i -p stratum+ssl://de.clore.herominers.com:1163 --nc 1|g' clore.sh > /dev/null 2>&1

echo "STEP 9 of 9: Starting GMiner in a Screen Session"
sudo screen -dmS miner bash -c './clore.sh; exec bash'

echo "-------------------------"
echo "    MINING WITH GMINER  "
echo "-------------------------"
echo " "
