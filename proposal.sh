KEY="mykey"
CHAINID="blockx_12345-1"
MONIKER="localtestnet"
KEYRING="test" # remember to change to other types of keyring like 'file' in-case exposing to outside world, otherwise your balance will be wiped quickly. The keyring test does not require private key to steal tokens from you
KEYALGO="eth_secp256k1"
BLOCKXD_EXECUTABLE_NAME="blockxd"
BLOCKXD_CONFIG_DIR=$HOME/.blockxd
REPO_DIR="bcx-testnet7-chain"

$BLOCKXD_EXECUTABLE_NAME tx gov submit-proposal software-upgrade test2 --title "upgrade-demo" --description "upgrade"  --from $KEY --upgrade-height 100 --deposit 10000000abcx --chain-id $CHAINID --keyring-backend $KEYRING --fees 30000abcx -y
