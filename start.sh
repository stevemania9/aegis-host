# downgrade TLS version - problem with websockets lib
//export NODE_OPTIONS=--openssl-legacy-provider
# Use sudo since we need to bind to ports 80, 443, run as daemon and log to webroot
sudo nohup ${NVM_BIN}/node --title aegis dist/index.js >public/aegis.log 2>&1 &
# display result of command
echo "checking status..."
sleep 4
./status.sh
