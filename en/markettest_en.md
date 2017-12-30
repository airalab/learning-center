## Market test

To generate bids by a robot:
```
$ rosservice call /market/gen_bids "{a: 0, k: 1, market: 'QmWboFP8XeBtFMbNYK3Ne8Z3gKFBSR5iQzkKgeNgQz3dz4', fee: 5, price_range: 50}"
```

To generate asks:
```
$ rosservice call /market/gen_asks "{a: 10, k: 1, market: 'QmWboFP8XeBtFMbNYK3Ne8Z3gKFBSR5iQzkKgeNgQz3dz4', objective: QmNnmP5dpYgTeciGGkrdTRkyxEgWL2iajf1oCkVJmYQrFG, fee: 5, price_range: 50}"
```

In case the matcher finds match the liability transaction is generated. When the robot controlled by Raspberry Pi publishes data to IPFS, the result is stored in blockchain. Then you get IPFS hash from smart-contract and download the data.
