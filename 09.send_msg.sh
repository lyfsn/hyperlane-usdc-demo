

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





hyperlane send message \
  --key $DEPLOYER_PRIVKEY \
  --origin endurance \
  --destination optimism \
  --timeout 300 \
  --verbosity info \
  --body "1"


hyperlane send message \
  --key $DEPLOYER_PRIVKEY \
  --origin optimism \
  --destination endurance \
  --timeout 300 \
  --verbosity info \
  --body "2" 

