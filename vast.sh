#!/bin/bash

echo "-------------------------"
echo "       LOLMINER          "
echo "    STARTING INSTALL     "
echo "-------------------------"

echo "STEP 1 of 5: Downloading lolMiner"
sudo wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.82/lolMiner_v1.82_Lin64.tar.gz > /dev/null 2>&1

echo "STEP 2 of 5: Extracting lolMiner"
sudo tar -xvf lolMiner_v1.82_Lin64.tar.gz > /dev/null 2>&1

echo "STEP 3 of 5: Changing Directory"
cd 1.81

echo "STEP 4 of 5: Updating Wallet Address in mine_karlsen.sh"
sudo sed -i 's/WALLET=karlsen:qqu40xsxzxhude64mt55l4p5cavlpenfp8jf0vj7qf8fqmdtl57z2z9jeur29.lolMinerWorker/WALLET=karlsen:qpgu9eszfavveg0y2kl7yr49ejcx6fmc3cxyfhvlx8vjqev9tf50sh5f4xzy0.lolMinerWorker/g' mine_karlsen.sh > /dev/null 2>&1

echo "STEP 5 of 5: Starting lolMiner"
sudo ./mine_karlsen.sh

echo "-------------------------"
echo "    MINING WITH LOLMINER  "
echo "-------------------------"
echo " "
