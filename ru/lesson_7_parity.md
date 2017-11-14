## Практика: parity

Создаем контракт Crowdfunding с помощью билдера

```js
var crowdbuilder_addr = factory.get("Aira BuilderCrowdfunding");
var BuilderCrowdfunding = JSON.parse(factory.abiOf(crowdbuilder_addr));
var builder = web3.eth.contract(BuilderCrowdfunding).at(crowdbuilder_addr);
var event = builder.Builded(function(error, result) { if(!error) crowd_addr = result.args.instance; else console.log(error); });
builder.create(core.get("Congress"), core.get("DAO credit"), "aira.life", 3920000, 3921000, web3.toWei(0.1, "ether"), web3.toWei(5, "ether"), web3.toWei(0.01, "ether"), 1, 1, 0, congress_addr, {from: web3.eth.accounts[0]})
```

Делаем `Crowdfunding` owner'ом для `DAO credit`

```js
var learning_center = web3.eth.contract(Core).at("0x4bdf1c4A800CE5408e0D95F52787C6924e07F5A3");
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var daocredit = web3.eth.contract(TokenEmission).at(core.get("DAO credit"));
daocredit.setOwner(crowd_addr, {from: web3.eth.accounts[0]});
```

Проверяем количество `DAO credit` токенов

```js
daocredit.balanceOf(web3.eth.accounts[0]);
```

Отправляем 0.1 ETH на адрес Crowdfunding

```js
web3.eth.sendTransaction({from:web3.eth.accounts[0], to:crowd_addr, value:web3.toWei(0.1, "ether")});
```

В ответ должны получить токены `DAO credit`

```js
daocredit.balanceOf(web3.eth.accounts[0]);
```

Завершаем урок, передав адрес Crowdfunding в функцию `execute` урока 7

```js
var lesson_addr = learning_center.get("Lesson_7");
var Lesson_7 = JSON.parse(learning_center.abiOf(lesson_addr));
var lesson = web3.eth.contract(Lesson_7).at(lesson_addr);
lesson.execute(crowd_addr, {from:web3.eth.accounts[0], gas:900000})
```

Проверяем баланс ABT

```js
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var tokenabt = web3.eth.contract(TokenEmission).at(tokenemission_addr);
tokenabt.balanceOf(web3.eth.accounts[0])
```
