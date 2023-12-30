**START MINING KARLSEN, PYRIN AND ALEPHIUM WITH LOLMINER ON VAST**

- Now, that we're connected to our server of choice. Copy a single line command below to get a new GPU server up and running mining XenBlocks.
- Important Note: In the below one liner commands, replace (JozefJarosciak/xgpu/main/vast.sh, or vash4.sh or vast8.sh, etc.) with a path to your own fork of my repository
     
  For single GPU:
  Karlsen
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/dodgedaemon/lolminerkarlsen/main/vast.sh && sudo chmod +x vast.sh && sudo ./vast.sh
  ```
  Alephium
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/dodgedaemon/lolminerkarlsen/main/vastaleph.sh && sudo chmod +x vastaleph.sh && sudo ./vastaleph.sh
  ```
  Pyrin
  ```
  sudo apt update && sudo apt -y install wget && sudo wget https://raw.githubusercontent.com/dodgedaemon/lolminerkarlsen/main/vastpyrin.sh && sudo chmod +x vastpyrin.sh && sudo ./vastpyrin.sh
  ```
