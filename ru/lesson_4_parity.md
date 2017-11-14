## Практика: parity

Создаем контракт ShareSale с помощью билдера

```js
var sharesalebuilder_addr = factory.get("Aira BuilderShareSale");
var BuilderShareSale = JSON.parse(factory.abiOf(sharesalebuilder_addr));
var builder = web3.eth.contract(BuilderShareSale).at(sharesalebuilder_addr);
var event = builder.Builded(function(error, result) { if(!error) shareSale_addr = result.args.instance; else console.log(error); });
builder.create(web3.eth.accounts[0], core.get('Ether funds'), core.get('Mars colony shares'), 1000000000000000, 0, {from: web3.eth.accounts[0], gas: 1000000, value: builder.buildingCostWei()})
// shareSale_addr now contains address of created contract
```

Переводим акции на контракт shareSale

```js
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var shares = web3.eth.contract(TokenEmission).at(core.get('Mars colony shares'));
shares.transfer(shareSale_addr, 100, {from:web3.eth.accounts[0], gas:900000})
```

Сколько сейчас акций

```js
shares.balanceOf(web3.eth.accounts[0])
```

Закрываем сделку

```js
var ShareSale = [{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"setOwner","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"hammer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"closed","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"etherFund","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"destroy","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_price_wei","type":"uint256"}],"name":"setPrice","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"priceWei","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_hammer","type":"address"}],"name":"setHammer","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"target","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"payable":false,"type":"constructor"},{"payable":true,"type":"fallback"}];
var shareSale = web3.eth.contract(ShareSale).at(shareSale_addr);
web3.eth.sendTransaction({from:web3.eth.accounts[0], to:shareSale_addr, gas: 3000000, value: (shares.balanceOf(shareSale.address) * shareSale.priceWei())})
```

Проверяем что акции получили

```js
shares.balanceOf(web3.eth.accounts[0])
```

Запускаем выполнение урока передав адрес shareSale

```js
var learning_center = web3.eth.contract(Core).at("0x4bdf1c4A800CE5408e0D95F52787C6924e07F5A3");
var lesson_addr = learning_center.get("Lesson_4");
var Lesson_4 = JSON.parse(learning_center.abiOf(lesson_addr));
var lesson = web3.eth.contract(Lesson_4).at(lesson_addr);
lesson.execute(shareSale_addr, {from:web3.eth.accounts[0], gas:900000})
```

Проверяем баланс abt

```js
var tokenabt = web3.eth.contract(TokenEmission).at(tokenemission_addr);
tokenabt.balanceOf(web3.eth.accounts[0])
```
