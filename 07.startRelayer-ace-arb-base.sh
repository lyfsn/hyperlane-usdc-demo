

export CONFIG_FILES=/root/hyperlane-deployer/agent.json
export LAYER_DB_DIR=/root/hyperlane-deployer/relayer

docker run \
  -it \
  -d \
  -u root \
  --name relayer \
  -e CONFIG_FILES=/config/agent-config.json \
  --mount type=bind,source=$CONFIG_FILES,target=/config/agent-config.json,readonly \
  --mount type=bind,source=$LAYER_DB_DIR,target=/layer-db \
  gcr.io/abacus-labs-dev/hyperlane-agent:devnet6 \
  ./relayer \
  --db /layer-db \
  --relayChains endurance,arbitrum,base \
  --defaultSigner.key $RELAYER_KEY \
  --log.level info  \
  --whitelist='[{"senderAddress":"*","destinationDomain":[648,42161,8453],"recipientAddress":"*"}]'




docker logs --tail 1 -f relayer | grep -C 2 "sequence_aware::backward"

