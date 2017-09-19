## Практика: geth

Даем approve на 1 акцию (контракт урока ожидает approve на адрес `Lesson_2`)

```js
var learning_center = web3.eth.contract(Core).at("0x4bdf1c4A800CE5408e0D95F52787C6924e07F5A3");
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var shares = web3.eth.contract(TokenEmission).at(core.get('Mars colony shares'));
shares.approve(learning_center.get("Lesson_2"), 1, {from:web3.eth.accounts[0], gas:900000})
```

Обращаемся к "second lesson->Execute" и передаем адрес dao в ответ получаем 50 ABT

```js
var lesson_addr = learning_center.get("Lesson_2");
var Lesson_2 = JSON.parse(learning_center.abiOf(lesson_addr));
var lesson = web3.eth.contract(Lesson_2).at(lesson_addr);
lesson.execute(dao_addr, "Mars colony shares", {from:web3.eth.accounts[0], gas:900000})
```

Проверяем баланс ABT

```js
var tokenabt = web3.eth.contract(TokenEmission).at(tokenemission_addr);
tokenabt.balanceOf(web3.eth.accounts[0])
```
