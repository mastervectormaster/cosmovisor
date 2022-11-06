KEY="mykey"
CHAINID="blockx_12345-1"
MONIKER="localtestnet"
KEYRING="test" # remember to change to other types of keyring like 'file' in-case exposing to outside world, otherwise your balance will be wiped quickly. The keyring test does not require private key to steal tokens from you
KEYALGO="eth_secp256k1"
BLOCKXD_EXECUTABLE_NAME="blockxd"
BLOCKXD_CONFIG_DIR=$HOME/.blockxd
REPO_DIR="bcx-testnet7-chain"

cd $REPO_DIR
bash init.sh

export DAEMON_NAME=$BLOCKXD_EXECUTABLE_NAME         # binary name
export DAEMON_HOME=$BLOCKXD_CONFIG_DIR  # daemon's home directory

mkdir -p $DAEMON_HOME/cosmovisor/genesis/bin

cp $(which $DAEMON_NAME) $DAEMON_HOME/cosmovisor/genesis/bin

cosmovisor start