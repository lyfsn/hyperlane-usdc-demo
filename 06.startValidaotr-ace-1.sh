

export CONFIG_FILES=/root/hyperlane-deployer/agent.json
export VALIDATOR_DB_DIR=/root/hyperlane-deployer/validator-db-ace-1

docker run \
  -it \
  -d \
  -u root \
  --name validator-ace-1 \
  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
  -e AWS_REGION=$AWS_REGION \
  -e AWS_BUCKET=$AWS_BUCKET \
  -e VALIDATOR_KEY=$VALIDATOR_KEY_ACE_1 \
  -e CONFIG_FILES=/config/agent-config.json \
  --mount type=bind,source=$CONFIG_FILES,target=/config/agent-config.json,readonly \
  --mount type=bind,source=$VALIDATOR_DB_DIR,target=/hyperlane_db \
  gcr.io/abacus-labs-dev/hyperlane-agent:main \
  ./validator \
  --db /hyperlane_db \
  --originChainName endurance \
  --checkpointSyncer.type s3 \
  --checkpointSyncer.bucket $AWS_BUCKET \
  --checkpointSyncer.region $AWS_REGION \
  --checkpointSyncer.folder ace-1 \
  --validator.region $AWS_REGION \
  --validator.type aws \
  --validator.id "alias/hyperlane-validator-signer-a1-devnet" \
  --chains.endurance.blocks.reorgPeriod 1
  

