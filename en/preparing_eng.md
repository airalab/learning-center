## Working with Ethereum testnet through the console

> Run this lesson only in testnet.

### Lesson Description

In order to complete this lesson you need to install Ethereum console client. We recommend [geth](https://github.com/ethereum/go-ethereum#automated-development-builds) or [parity](https://ethcore.io/parity.html).

Then you need to syncronize it with the **testnet** and mine a bit of **ether**. The ether will be then used to send transaction (see example below). You can do that in a several ways:

- **The easiest one.** You can get free 0.01 ether by going to [aira.life](http://aira.life/tap/). Please enter your testnet address and press "Send 0.01 ether" button. In about 1 minute your balance must be changed.
- **In order to mine some ether.** First read the [official Ethereum docs](http://www.ethdocs.org/en/latest/mining.html#using-geth). When your miner software is set - please switch it on for 20 to 30 minutes.
- **In order to make some friends!** Connect to our official Gitter channel: [Aira team friends](https://gitter.im/airalab/friends), write your testnet address and ask for some free ether. Someone will help you for sure!

### Skill test

After 0.01 `ether` is received, try to call the `Lesson 0` contract (in a testnet of course). It will then send you **5 ethers** that you can use to complete all 12 lessons.

### Example

```js
var learning_center = eth.contract(Core).at("0x73c5f07b929867951aa2b61f30773dba627d4779");
var Lesson_0 = [{"constant":false,"inputs":[],"name":"ping","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isSended","outputs":[{"name":"","type":"bool"}],"type":"function"}];
var lesson = web3.eth.contract(Lesson_0).at(learning_center.getModule("Lesson_0");
lesson.ping({from:web3.eth.accounts[0], gas:200000});
```
