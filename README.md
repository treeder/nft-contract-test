# nft-contract-test

How I did this:

* `sha256sum -b contract.docx > checksum`
* add to json
* `sha256sum title.json > checkjson`
* to verify: `sha256sum --check checkjson`
