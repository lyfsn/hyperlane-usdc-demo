

hyperlane send message \
  --key $DEPLOYER_PRIVKEY \
  --origin endurance \
  --destination arbitrum \
  --timeout 300 \
  --verbosity info \
  --body "1"


hyperlane send message \
  --key $DEPLOYER_PRIVKEY \
  --origin arbitrum \
  --destination endurance \
  --timeout 300 \
  --verbosity info \
  --body "2" 




hyperlane warp send \
  --key $DEPLOYER_PRIVKEY \
  --warp ~/.hyperlane/deployments/warp_routes/USDC/arbitrum-endurance-config.yaml \
  --origin arbitrum \
  --destination endurance




