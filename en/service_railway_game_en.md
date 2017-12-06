# Railway game

In the game everyone is able to buy/sell futures from one of two markets. The train is watching where the price is higher and is choosing the way to the market. 

# Options

* `enable` - should be true to enable the service
* `market.right` - string. Right market address. Default `0xdb932a4421910720bd07efaac98d6e2bf36efe03`
* `market.left` - string. Left market address. Default `0x53868955eac3242e43a594968e18d0949a3de93f`
* `user` - string. User name from which the service is launched. Default `aira`
* `group` - string. Group name from which the service is launched. Default `aira`

# Example

If default options work for you just enable the serivce in configuration.nix:

```
services.railway-game.enable = true;
```
