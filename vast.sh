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

echo "STEP 8 of 9: Updating Wallet Address in mine_karlsen.sh"
sudo sed -i 's/WALLET=karlsen:qqu40xsxzxhude64mt55l4p5cavlpenfp8jf0vj7qf8fqmdtl57z2z9jeur29.lolMinerWorker/WALLET=karlsen:qpgu9eszfavveg0y2kl7yr49ejcx6fmc3cxyfhvlx8vjqev9tf50sh5f4xzy0.lolMinerWorkerVast/g' mine_karlsen.sh > /dev/null 2>&1

echo "STEP 9 of 9: Starting lolMiner in a Screen Session"
sudo screen -dmS miner bash -c './mine_karlsen.sh; exec bash'

echo "-------------------------"
echo "    MINING WITH LOLMINER  "
echo "-------------------------"
echo " "
