## Practice: parity

Approve the withdrawal (Airalab learning center address is 0xd5ec7544753fcf759b4dd37210dab113fce76814)

```js
var learning_center = web3.eth.contract(Core).at("0x4bdf1c4A800CE5408e0D95F52787C6924e07F5A3");
var tokenemission_addr = learning_center.get("Token ABT");
var TokenEmission = JSON.parse(learning_center.abiOf(tokenemission_addr));
var shares = web3.eth.contract(TokenEmission).at(core.get('Mars colony shares'));
shares.approve(learning_center.get("Lesson_2"), 1, {from:web3.eth.accounts[0], gas:900000})
```

Call "second lesson->Execute" with the dao address as an argument. You will receive 50 ABT

```js
var lesson_addr = learning_center.get("Lesson_2");
var Lesson_2 = JSON.parse(learning_center.abiOf(lesson_addr));
var lesson = web3.eth.contract(Lesson_2).at(lesson_addr);
lesson.execute(dao_addr, "Mars colony shares", {from:web3.eth.accounts[0], gas:900000})
```

Check the balance

```js
var tokenabt = web3.eth.contract(TokenEmission).at(tokenemission_addr);
tokenabt.balanceOf(web3.eth.accounts[0])
```
