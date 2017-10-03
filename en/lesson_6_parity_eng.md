## Practice: parity

Create the Congress contract using the builder

```js
var congressbuilder_addr = factory.get("Aira BuilderCongress");
var CongressBuilder = JSON.parse(factory.abiOf(congressbuilder_addr));
var builder = web3.eth.contract(CongressBuilder).at(congressbuilder_addr);
var event = builder.Builded(function(error, result) { if(!error) congress_addr = result.args.instance; else console.log(error); });
builder.create(3, 1, 0, 0, 0, {from: web3.eth.accounts[0], gas: 3000000, value: builder.buildingCostWei()})
```

Add the `Congress` contract address to the registry

```js
core.set("Congress", congress_addr, "https://raw.githubusercontent.com/airalab/core/master/contracts/foundation/Congress.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.get("Congress")
```

Add members

```js
var Congress = // it's too big to place it here, so get it from https://raw.githubusercontent.com/airalab/core/master/abi/Congress.json;
var congress = web3.eth.contract(Congress).at(core.get("Congress"));
congress.addMember(web3.eth.accounts[1], "Member2", {from: web3.eth.accounts[0], gas: 300000});
congress.addMember(web3.eth.accounts[2], "Member3", {from: web3.eth.accounts[0], gas: 300000});
```

Send a little amount of ETH to Congress

```js
web3.eth.sendTransaction({from: web3.eth.accounts[0], to: congress.address, value: web3.toWei(0.2, "ether")});
```

Add new proposal. In this case: send 0.1 ETH to Member3

```js
var event = congress.ProposalAdded(function(error, result) { if(!error) proposalID = result.args.proposal; else console.log(error); });
congress.newProposal(web3.eth.accounts[2], web3.toWei(0.1, "ether"), "Salary", 0, {from:web3.eth.accounts[0]});
```

Voting

```js
congress.vote(proposalID, true, "Agreed", {from: web3.eth.accounts[0]})
congress.vote(proposalID, true, "Agreed", {from: web3.eth.accounts[1]})
congress.vote(proposalID, true, "Agreed", {from: web3.eth.accounts[2]})
```

Now it's time to execute the proposal

```js
congress.executeProposal(proposalID, 0, {from: web3.eth.accounts[0]})
```

The balance of Member3 now should have a 0.1 ETH more. Pass the Congress address to Lessons' execute

```js
var learning_center = web3.eth.contract(Core).at("0x4bdf1c4A800CE5408e0D95F52787C6924e07F5A3");
var lesson_addr = learning_center.get("Lesson_6");
var Lesson_6 = JSON.parse(learning_center.abiOf(lesson_addr));
var lesson = web3.eth.contract(Lesson_6).at(lesson_addr);
lesson.execute(congress.address, {from:web3.eth.accounts[0], gas:900000})
```

Check the ABT balance

```js
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var tokenabt = web3.eth.contract(TokenEmission).at(tokenemission_addr);
tokenabt.balanceOf(web3.eth.accounts[0])
```
