## Practice: parity

Create the Crowdfunding contract using the builder

```js
var crowdbuilder_addr = factory.get("Aira BuilderCrowdfunding");
var BuilderCrowdfunding = JSON.parse(factory.abiOf(crowdbuilder_addr));
var builder = web3.eth.contract(BuilderCrowdfunding).at(crowdbuilder_addr);
var event = builder.Builded(function(error, result) { if(!error) crowd_addr = result.args.instance; else console.log(error); });
builder.create(core.get("Congress"), core.get("DAO credit"), "aira.life", 3920000, 3921000, web3.toWei(0.1, "ether"), web3.toWei(5, "ether"), web3.toWei(0.01, "ether"), 1, 0, 0, congress_addr, {from: web3.eth.accounts[0]});)
```

Make `Crowdfunding` owner of `DAO credit`

```js
var learning_center = web3.eth.contract(Core).at("0x4bdf1c4A800CE5408e0D95F52787C6924e07F5A3");
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var daocredit = web3.eth.contract(TokenEmission).at(core.get("DAO credit"));
daocredit.setOwner(crowd_addr, {from: web3.eth.accounts[0]});
```

Send 0.1 ETH to `Crowdfunding`

```js
web3.sendTransaction({from:web3.eth.accounts[0], to:crowd_addr, value:web3.toWei(0.1, "ether")});
```

In return we should get `DAO credit` tokens

```js
daocredit.balanceOf(web3.eth.accounts[0]);
```

Execute the lesson. Pass the `Crowdfunding` contract address

```js
var lesson_addr = learning_center.get("Lesson_7");
var Lesson_7 = JSON.parse(learning_center.abiOf(lesson_addr));
var lesson = web3.eth.contract(Lesson_7).at(lesson_addr);
lesson.execute(crowd_addr, {from:web3.eth.accounts[0], gas:900000})
```

Check the ABT balance

```js
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var tokenabt = web3.eth.contract(TokenEmission).at(tokenemission_addr);
tokenabt.balanceOf(web3.eth.accounts[0])
```
