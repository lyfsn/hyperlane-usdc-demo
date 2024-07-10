

export CONFIG_FILES=/root/hyperlane-deployer/agent.json
export LAYER_DB_DIR=/root/hyperlane-deployer/relayer-2

docker run \
  -it \
  -d \
  -u root \
  --name relayer-2 \
  -e CONFIG_FILES=/config/agent-config.json \
  --mount type=bind,source=$CONFIG_FILES,target=/config/agent-config.json,readonly \
  --mount type=bind,source=$LAYER_DB_DIR,target=/layer-db \
  gcr.io/abacus-labs-dev/hyperlane-agent:devnet6 \
  ./relayer \
  --db /layer-db \
  --relayChains endurance,arbitrum,base \
  --defaultSigner.key $RELAYER_KEY_2 \
  --log.level info  \
  --whitelist='[{"senderAddress":"*","destinationDomain":[648,42161,8453],"recipientAddress":"*"}}]'



docker stop relayer-2
docker rm relayer-2

docker logs --tail 1 -f relayer | grep -C 2 "sequence_aware::backward"

