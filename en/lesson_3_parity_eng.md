## Practice: parity

Create the `Token Ether` using builder

```js
var tokenetherbuilder_addr = factory.get("Aira BuilderTokenEther");
var BuilderTokenEther = JSON.parse(factory.abiOf(tokenetherbuilder_addr));
var builder = web3.eth.contract(BuilderTokenEther).at(tokenetherbuilder_addr);
var event = builder.Builded(function(error, result) { if(!error) eth_addr = result.args.instance; else console.log(error); });
builder.create('Mars colony credits', 'MRC', 0, {from: web3.eth.accounts[0], gas: 1000000, value: builder.buildingCostWei()})

// eth_addr now contains address of created contract
```

Add a new token to the DAO registry

```js
core.set("Ether funds", eth_addr, "https://raw.githubusercontent.com/airalab/core/master/contracts/token/TokenEther.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.get("Ether funds")
```

Send 0.1 ETH to the contract

```js
web3.eth.sendTransaction({from:web3.eth.accounts[0], to:core.get('Ether funds'), value: web3.toWei('0.1', 'ether')})
```

Call "third lesson->Execute". You will receive 50 air

```js
var learning_center = web3.eth.contract(Core).at("0x4bdf1c4A800CE5408e0D95F52787C6924e07F5A3");
var lesson_addr = learning_center.get("Lesson_3");
var Lesson_3 = JSON.parse(learning_center.abiOf(lesson_addr));
var lesson = web3.eth.contract(Lesson_3).at(lesson_addr);
lesson.execute(core.get('Ether funds'), {from:web3.eth.accounts[0], gas:900000})
```

Check the balance

```js
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var tokenabt = web3.eth.contract(TokenEmission).at(tokenemission_addr);
tokenabt.balanceOf(web3.eth.accounts[0])
```
