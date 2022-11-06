KEY="mykey"
CHAINID="blockx_12345-1"
MONIKER="localtestnet"
KEYRING="test" # remember to change to other types of keyring like 'file' in-case exposing to outside world, otherwise your balance will be wiped quickly. The keyring test does not require private key to steal tokens from you
KEYALGO="eth_secp256k1"
LOGLEVEL="info"

rm -rf ~/.blockxd
blockxd config keyring-backend $KEYRING
blockxd init $MONIKER --chain-id $CHAINID

cp -p genesis.json ~/.blockxd/config

blockxd start --minimum-gas-prices 1000000000abcx