

hyperlane deploy core \
    --key $DEPLOYER_PRIVKEY \
    --targets endurance \
    --ism ./configs/ism.yaml \
    --overrides

 cp configs/agent.json agent-ace.json

