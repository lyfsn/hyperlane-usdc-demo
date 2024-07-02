

export CONFIG_FILES=/root/hyperlane-deployer/agent.json
export LAYER_DB_DIR=/root/hyperlane-deployer/relayer-db

docker run \
  -it \
  -d \
  -u root \
  --name relayer-ace-arb \
  -e CONFIG_FILES=/config/agent-config.json \
  --mount type=bind,source=$CONFIG_FILES,target=/config/agent-config.json,readonly \
  --mount type=bind,source=$LAYER_DB_DIR,target=/layer-db \
  gcr.io/abacus-labs-dev/hyperlane-agent:main \
  ./relayer \
  --db /layer-db \
  --relayChains endurance,arbitrum \
  --defaultSigner.key $RELAYER_KEY \
  --log.level info 







