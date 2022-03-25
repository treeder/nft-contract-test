# nft-contract-test

How I did this:

* `sha256sum -b contract.docx > checksum`
* add to json
* `sha256sum title.json > checkjson`
* to verify: `sha256sum --check checkjson`

## Deploying contract

* Copy SMA.sol and change name and symbol
* `web3 contract build X.sol`
* `web3 contract deploy X.sol`

## Info

* Contract deployed at: 0xf4Ad41442451d1CE56A9D4D70FFaf57430f70FC0
* mint: 
    * `export WEB3_PRIVATE_KEY=...`
    * `export WEB3_NETWORK=gochain`
    * `export WEB3_ADDRESS=0xf4Ad41442451d1CE56A9D4D70FFaf57430f70FC0` # contract address
    * `web3 contract call --abi SMA.abi --gas-limit 500000 --function mint 0x266baECf73Dec32C38F0c73Bf60fd8e000494012 https://raw.githubusercontent.com/treeder/nft-contract-test/main/792385bdf27e864736342ee9e6c17b05587fe1e116716cdf3e5269ce11fdbf8a`
* get info
    * get tokenURI `web3 contract call --abi SMA.abi --function tokenURI 1` # where 1 is the token auto incrementing ID
    * this will return a URL that includes the JSON hash on the end like: `https://raw.githubusercontent.com/treeder/nft-contract-test/main/792385bdf27e864736342ee9e6c17b05587fe1e116716cdf3e5269ce11fdbf8a`
    * you can download the JSON from that URL `sha256sum` check that last path section to verify the JSON

