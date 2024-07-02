

hyperlane deploy core \
    --key $DEPLOYER_PRIVKEY \
    --targets arbitrum \
    --ism ./configs/ism.yaml \
    --overrides

cp configs/agent.json agent-arb.json

