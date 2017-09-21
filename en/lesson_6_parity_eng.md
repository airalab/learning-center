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
var Congress = [{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"proposals","outputs":[{"name":"recipient","type":"address"},{"name":"amount","type":"uint256"},{"name":"description","type":"string"},{"name":"votingDeadline","type":"uint256"},{"name":"executed","type":"bool"},{"name":"proposalPassed","type":"bool"},{"name":"numberOfVotes","type":"uint256"},{"name":"currentResult","type":"int256"},{"name":"proposalHash","type":"bytes32"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"targetMember","type":"address"}],"name":"removeMember","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"setOwner","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"id","type":"uint256"},{"name":"transactionBytecode","type":"bytes"}],"name":"executeProposal","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"memberId","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"numProposals","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"hammer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"members","outputs":[{"name":"member","type":"address"},{"name":"name","type":"string"},{"name":"memberSince","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"debatingPeriodInMinutes","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"minimumQuorum","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"destroy","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_value","type":"uint256"},{"name":"_token","type":"address"},{"name":"_extraData","type":"bytes"}],"name":"receiveApproval","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"majorityMargin","outputs":[{"name":"","type":"int256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"beneficiary","type":"address"},{"name":"amount","type":"uint256"},{"name":"jobDescription","type":"string"},{"name":"transactionBytecode","type":"bytes"}],"name":"newProposal","outputs":[{"name":"id","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"minimumQuorumForProposals","type":"uint256"},{"name":"minutesForDebate","type":"uint256"},{"name":"marginOfVotesForMajority","type":"int256"}],"name":"changeVotingRules","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"targetMember","type":"address"},{"name":"memberName","type":"string"}],"name":"addMember","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_hammer","type":"address"}],"name":"setHammer","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"id","type":"uint256"},{"name":"supportsProposal","type":"bool"},{"name":"justificationText","type":"string"}],"name":"vote","outputs":[{"name":"vote","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"id","type":"uint256"},{"name":"beneficiary","type":"address"},{"name":"amount","type":"uint256"},{"name":"transactionBytecode","type":"bytes"}],"name":"checkProposalCode","outputs":[{"name":"codeChecksOut","type":"bool"}],"payable":false,"type":"function"},{"inputs":[{"name":"minimumQuorumForProposals","type":"uint256"},{"name":"minutesForDebate","type":"uint256"},{"name":"marginOfVotesForMajority","type":"int256"},{"name":"congressLeader","type":"address"}],"payable":false,"type":"constructor"},{"payable":true,"type":"fallback"},{"anonymous":false,"inputs":[{"indexed":true,"name":"proposal","type":"uint256"},{"indexed":true,"name":"recipient","type":"address"},{"indexed":true,"name":"amount","type":"uint256"},{"indexed":false,"name":"description","type":"string"}],"name":"ProposalAdded","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"proposal","type":"uint256"},{"indexed":true,"name":"position","type":"bool"},{"indexed":true,"name":"voter","type":"address"},{"indexed":false,"name":"justification","type":"string"}],"name":"Voted","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"proposal","type":"uint256"},{"indexed":true,"name":"quorum","type":"uint256"},{"indexed":true,"name":"active","type":"bool"}],"name":"ProposalTallied","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"member","type":"address"},{"indexed":true,"name":"isMember","type":"bool"}],"name":"MembershipChanged","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"minimumQuorum","type":"uint256"},{"indexed":true,"name":"debatingPeriodInMinutes","type":"uint256"},{"indexed":true,"name":"majorityMargin","type":"int256"}],"name":"ChangeOfRules","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"amount","type":"uint256"}],"name":"ReceivedEther","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"value","type":"uint256"},{"indexed":true,"name":"token","type":"address"},{"indexed":false,"name":"extraData","type":"bytes"}],"name":"ReceivedTokens","type":"event"}];
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
