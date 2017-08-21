## Working with Ethereum testnet through the console

> Run this lesson only in testnet.

### Lesson Description

In order to complete this lesson you need to install the Ethereum console client. We recommend [geth](https://github.com/ethereum/go-ethereum#automated-development-builds) or [parity](https://ethcore.io/parity.html).

Then you need to syncronize it with the **testnet** and mine a bit of **ether**. The ether will be then used to send a transaction (see example below). You can do that in several ways:

- **The easiest one.** You can get 0.01 ether for free by going to [aira.life](http://aira.life/tap/). Please enter your testnet address and press "Send 0.01 ether" button. In about 1 minute your balance will have changed.
- **Mine some ether.** First read the [official Ethereum docs](http://www.ethdocs.org/en/latest/mining.html#using-geth). When your miner software is set - please switch it on for 20 to 30 minutes.
- **Make some friends!** Connect to our official Gitter channel: [Aira team friends](https://gitter.im/airalab/friends), write your testnet address and ask for some free ether. Someone will help you for sure!

### Skill test

After 0.01 `ether` is received, try to call the `Lesson 0` contract (in a testnet of course). It will then send you **5 ether** that you can use to complete all 12 lessons.

### Example

```js
var learning_center = web3.eth.contract(Core).at("0x0144127bf682d4c270091ddcdeabfd79b847a6de");
var Lesson_0 = [{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"ping","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isSended","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"payable":true,"type":"fallback"}];
var lesson = web3.eth.contract(Lesson_0).at(learning_center.get("Lesson_0");
lesson.ping({from:web3.eth.accounts[0], gas:200000});
```
