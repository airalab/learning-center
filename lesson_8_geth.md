## Практика: geth

Ловим события для новых контрактов DAOMarketAgent

```js
var e = marketRegulator.MarketAgentSign({}, '', function(error,result){
    console.log(result.args.agent);
})
```

Создаем контракт агента рынка DAOMarketAgent с помощью регулятора рынка

```js
marketRegulator.sign({from:web3.eth.accounts[0], gas:900000});
```

Добавляем в реестр контрактов организации адрес нового контракта из пойманого события

```js
core.setModule("Market agent", '0x2ca27392fe7e5851893543a9db5647c3f7317dc4', "github://airalab/core/market/DAOMarketAgent.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Market agent")
```

Запускаем выполнение урока передав адрес Market и адрес DAOMarketAgent

```js
var eighthLesson_addr = '0x106c4cad1fb1921d3a3347b353eb4fc576ee5fe3';
var EighthLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_market","type":"address"},{"name":"_agent","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var eighthLesson = web3.eth.contract(EighthLesson).at(eighthLesson_addr);
eighthLesson.execute(core.getModule('Market'), core.getModule('Market agent'), {from:web3.eth.accounts[0], gas:900000})
```

Проверяем баланс air

```js
var tokenair_addr = '0x000755654006c311edc395f331b61dfe8e8d4dc1';
var tokenair_abi = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var tokenair = web3.eth.contract(tokenair_abi).at(tokenair_addr);
tokenair.getBalance()
```
