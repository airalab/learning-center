## Practice: parity

Create internal market token

```js
var tokenemissionbuilder_addr = factory.get("Aira BuilderTokenEmission");
var BuilderTokenEmission = JSON.parse(factory.abiOf(tokenemissionbuilder_addr));
var builder = web3.eth.contract(BuilderTokenEmission).at(tokenemissionbuilder_addr);
var event = builder.Builded(function(error, result) { if(!error) token_addr = result.args.instance; else console.log(error); });
builder.create('DAO credit', 'DCT', 0, 100, 0, {from: web3.eth.accounts[0], gas: 1000000, value: builder.buildingCostWei()})
```

Add the new token to the registry

```js
core.set("DAO credit", token_addr, "https://raw.githubusercontent.com/airalab/core/master/contracts/token/TokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.get("DAO credit")
```

Execute the lesson. Don't forget to pass the new token address and the DAO address

```js
var learning_center = web3.eth.contract(Core).at("0x4bdf1c4A800CE5408e0D95F52787C6924e07F5A3");
var lesson_addr = learning_center.get("Lesson_5");
var Lesson_5 = JSON.parse(learning_center.abiOf(lesson_addr));
var lesson = web3.eth.contract(Lesson_5).at(lesson_addr);
lesson.execute('DAO credit', core.address, {from:web3.eth.accounts[0], gas:900000})
```

Check the air balance

```js
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var tokenabt = web3.eth.contract(TokenEmission).at(tokenemission_addr);
tokenabt.balanceOf(web3.eth.accounts[0])
```
