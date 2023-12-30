#!/bin/bash

echo "-------------------------"
echo "       LOLMINER          "
echo "    STARTING INSTALL     "
echo "-------------------------"

sudo apt -y upgrade > /dev/null 2>&1
echo "STEP 1 of 9: Completed Packages Update"

sudo apt -y install ocl-icd-opencl-dev > /dev/null 2>&1
echo "STEP 2 of 9: Installed OpenCL"

sudo apt -y install nano  > /dev/null 2>&1
echo "STEP 3 of 9: Installed Nano"

sudo apt -y install screen  > /dev/null 2>&1
echo "STEP 4 of 9: Installed Screen"

echo "STEP 5 of 9: Downloading lolMiner"
sudo wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.82/lolMiner_v1.82_Lin64.tar.gz > /dev/null 2>&1

echo "STEP 6 of 9: Extracting lolMiner"
sudo tar -xvf lolMiner_v1.82_Lin64.tar.gz > /dev/null 2>&1

echo "STEP 7 of 9: Changing Directory"
cd 1.82

echo "STEP 8 of 9: Updating Wallet Address in mine_pyrin.sh"
sudo sed -i 's/WALLET=pyrin:qq92h3nryfwq0gkh73cwvjh9hhqlq2mank9sfxtgc99hqwn2ec6u2gszphr0u/WALLET=pyrin:qqyuygj8tla5nh3rdqhhed8kht3362aj0n9zrvk0y5wgj70ldp8qgwp25eugf.lolMinerWorkerVast/g' mine_aleph.sh > /dev/null 2>&1

echo "STEP 9 of 9: Starting lolMiner in a Screen Session"
sudo screen -dmS miner bash -c './mine_pyrin.sh; exec bash'

echo "-------------------------"
echo "    MINING WITH LOLMINER  "
echo "-------------------------"
echo " "
