## Practice: geth

Add the Token emission builder contract address to the registry

```js
core.setModule("Token emission builder", factory.getModule("Aira BuilderTokenEmission"), "github://airalab/core/builder/BuilderTokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Token emission builder")
```

Create four new tokens 

```js
var BuilderTokenEmission = [{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderTokenEmission).at(core.getModule("Token emission builder"));

builder.create('Assset 1', 'A1', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCostWei()})
var assset1_addr = builder.getLastContract()

builder.create('Assset 2', 'A2', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCostWei()})
var assset2_addr = builder.getLastContract()

builder.create('Service 1', 'S1', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCostWei()})
var service1_addr = builder.getLastContract()

builder.create('Service 2', 'S2', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCostWei()})
var service2_addr = builder.getLastContract()
service2_addr
```

Add new lots to the DAO registry to make them tradable

```js
var Core = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"getModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getModuleName","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"interfaceOf","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"removeModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"firstModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"}],"name":"setModule","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"nextModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"}];
var core = eth.contract(Core).at(dao_addr)

core.setModule('Assset 1 token', assset1_addr, "github://airalab/core/token/TokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.contains(assset1_addr)

core.setModule('Assset 2 token', assset2_addr, "github://airalab/core/token/TokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.contains(assset2_addr)

core.setModule('Service 1 token', service1_addr, "github://airalab/core/token/TokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.contains(service1_addr)

core.setModule('Service 2 token', service2_addr, "github://airalab/core/token/TokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.contains(service2_addr)
```

For each token add new lot to the market

```js
var DAOMarketRegulator = [{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_sale","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"sale","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"notifyDeal","outputs":[],"type":"function"},{"constant":false,"inputs":[],"name":"sign","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"market","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_asset","type":"address"}],"name":"currentRuleOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buy","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"buy","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_rule","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"dao_core","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_shares","type":"address"},{"name":"_core","type":"address"},{"name":"_market","type":"address"},{"name":"_dao_credits","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"lot","type":"address"}],"name":"NewLot","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_value","type":"uint256"}],"name":"Emission","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"agent","type":"address"}],"name":"MarketAgentSign","type":"event"}];
var marketRegulator = web3.eth.contract(DAOMarketRegulator).at(core.getModule('Market regulator'));
marketRegulator.sale(assset1_addr, 1, 2, {from:web3.eth.accounts[0], gas:900000})
marketRegulator.buy(assset2_addr, 2, 1, {from:web3.eth.accounts[0], gas:900000})
marketRegulator.sale(service1_addr, 1, 5, {from:web3.eth.accounts[0], gas:900000})
marketRegulator.buy(service2_addr, 4, 2, {from:web3.eth.accounts[0], gas:900000})
```

Execute the lesson. Don't forget to pass the Market contract address

```js
var learning_center = eth.contract(Core).at("0x73c5f07b929867951aa2b61f30773dba627d4779");
var Lesson_10 = [{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_market","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}];
var lesson = web3.eth.contract(Lesson_10).at(learning_center.getModule("Lesson_10");
lesson.execute(core.getModule('Market'), {from:web3.eth.accounts[0], gas:900000})
```

Check air balance

```js
var tokenair_abi = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var tokenair = web3.eth.contract(tokenair_abi).at(learning_center.getModule("Air token"));
tokenair.getBalance()
```
