

export CONFIG_FILES=/root/hyperlane-deployer/agent.json
export VALIDATOR_DB_DIR=/root/hyperlane-deployer/validator-db-arb-2

docker run \
  -it \
  -d \
  -u root \
  --name validator-arb-2 \
  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
  -e AWS_REGION=$AWS_REGION \
  -e AWS_BUCKET=$AWS_BUCKET \
  -e VALIDATOR_KEY=$VALIDATOR_KEY_ARB_2 \
  -e CONFIG_FILES=/config/agent-config.json \
  --mount type=bind,source=$CONFIG_FILES,target=/config/agent-config.json,readonly \
  --mount type=bind,source=$VALIDATOR_DB_DIR,target=/hyperlane_db \
  gcr.io/abacus-labs-dev/hyperlane-agent:main \
  ./validator \
  --db /hyperlane_db \
  --originChainName arbitrum \
  --checkpointSyncer.type s3 \
  --checkpointSyncer.bucket $AWS_BUCKET \
  --checkpointSyncer.region $AWS_REGION \
  --checkpointSyncer.folder arb-2 \
  --validator.region $AWS_REGION \
  --validator.type aws \
  --validator.id "alias/hyperlane-validator-signer-a2-devnet" \
  --chains.arbitrum.blocks.reorgPeriod 1 




