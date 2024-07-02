

### mail box defualtISM
cast call 0xBEF497cd38A86D2Ec90e57695c3F62E16E3bC5bf \
  --rpc-url http://44.221.215.226/ \
  "defaultIsm()"

# set id
cast send 0xBEF497cd38A86D2Ec90e57695c3F62E16E3bC5bf \
  --rpc-url http://44.221.215.226/ \
  --private-key $DEPLOYER_PRIVKEY \
  "setDefaultIsm(address)" 0x60D2AB60bb261C32AD8FF1Beb586b522d9Df316b

# set aggr
cast send 0xBEF497cd38A86D2Ec90e57695c3F62E16E3bC5bf \
  --rpc-url http://44.221.215.226/ \
  --private-key $DEPLOYER_PRIVKEY \
  "setDefaultIsm(address)" 0x895978c28df3413C1598d7012F918479C6cd6634




### test recipient (id)
cast call 0x5052DB3c3886597Ace94aa78bf2729b9a5d4D0fC \
  --rpc-url http://44.221.215.226/ \
  "interchainSecurityModule()"

cast send 0x5052DB3c3886597Ace94aa78bf2729b9a5d4D0fC \
  --rpc-url http://44.221.215.226/ \
  --private-key $DEPLOYER_PRIVKEY \
  "setInterchainSecurityModule(address)" 0x60D2AB60bb261C32AD8FF1Beb586b522d9Df316b


## test recipient (aggr)
cast call 0x1E528108644aAD0aa4231c0F92e6FfC1cD0F75Fa \
  --rpc-url http://44.221.215.226/ \
  "interchainSecurityModule()"


