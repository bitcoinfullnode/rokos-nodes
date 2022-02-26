#!/bin/bash
echo "Initializing your Blackcoin binaries upgrade on ROKOS"
echo "This could take a minute, enjoy some coffee or water and come back soon..."

date

# Download new Blackcoin binaries

wget https://blackcoinmore.org/files/blackcoin-more-armv7-v2.13.2.9-41bb016853.tar.gz

tar -xzvf blackcoin-more-armv7-v2.13.2.9-41bb016853.tar.gz

#make sure old binaries are removed to prevent errors
sudo rm /usr/local/bin/blackmore*

# Copy new binaries to usr local bin
sudo cp blackmored blackmore-qt blackmore-tx blackmore-cli /usr/local/bin/

# Delete the downloaded files // free space from device
rm -rf blackcoin-more-armv7-v2.13.2.9-41bb016853.tar.gz
rm blackmored blackmore-qt blackmore-tx blackmore-cli

# end Client
echo "Completed the Blackcoin more binaries upgrade."
echo "enjoy your ROKOS experience"
exit 0
