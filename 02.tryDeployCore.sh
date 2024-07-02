


hyperlane deploy core --dry-run arbitrum \
    --ism ./configs/ism.yaml \
    --from-address $DEPLOYER_ADDR \
    --overrides


hyperlane deploy core --dry-run endurance \
    --ism ./configs/ism.yaml \
    --from-address $DEPLOYER_ADDR \
    --overrides

