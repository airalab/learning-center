# Выполнение уроков с использованием клиента сети geth.

**Токен air**

```
var tokenair_addr = '0xb59538063903387d915486fd003a73ac0b6576d7';
var tokenair_abi = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var tokenair = web3.eth.contract(tokenair_abi).at(tokenair_addr);
```

## Урок 0

```
var airalab_addr = '0xf89ed9fee40ac4030b48294e689391cccb89d139';
var airalab_abi = [{"constant":false,"inputs":[],"name":"ping","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"token","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_token","type":"address"}],"type":"constructor"}];
var airalab = web3.eth.contract(airalab_abi).at(airalab_addr);
airalab.ping({from:web3.eth.accounts[0], gas:200000});
```

## Урок 1

### Обращаемся к BuilderDAO для создания dao

```
var BuilderDAO = [{"constant":false,"inputs":[{"name":"_dao_name","type":"string"},{"name":"_dao_description","type":"string"},{"name":"_shares_name","type":"string"},{"name":"_shares_symbol","type":"string"},{"name":"_shares_count","type":"uint256"}],"name":"create","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_price","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var Core = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"getModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getModuleName","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"interfaceOf","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"removeModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"firstModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"}],"name":"setModule","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"nextModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"}];
var factory = eth.contract(Core).at("0x4b94c11ff4b118cad6d0d1831ecb60586a9241df")
var builder = eth.contract(BuilderDAO).at(factory.getModule("Aira BuilderDAO"))
builder.create('Martian colony', 'DAO for first human colony on Mars', 'Mars colony shares', 'MRS', 10000,
               {from: eth.accounts[0], gas: 3000000, value: builder.buildingCost()})
			   
var dao_addr = builder.getLastContract()
var core = web3.eth.contract(Core).at(dao_addr);
var shares_addr = core.getModule('Mars colony shares');
```

![Урок 1 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/11.png)
![Урок 1 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/12.png)

### Обращаемся к "first lesson->Execute" и передаем адрес dao в ответ получаем 50air

```
var firstLesson_addr = '0x03faf42f3a97aa86aa27ccbe099fdff8f51ec574';
var FirstLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"ownerAir","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"},{"name":"_shares","type":"address"},{"name":"_shares_name","type":"string"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_ownerAir","type":"address"}],"type":"constructor"}];
var firstLesson = web3.eth.contract(FirstLesson).at(firstLesson_addr);
firstLesson.execute(dao_addr, shares_addr, "Mars colony shares", {from:web3.eth.accounts[0], gas:900000})
```

![Урок 1 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/13.png)

Проверяем баланс air

![Урок 1 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/14.png)

## Урок 2

### Даем approve на 1 акцию (контракт урока ожидает approve на адрес 0xc9b6815b47a14b20599ea814c2fb10260d1abdb9)

```
var TokenEmission = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var shares = web3.eth.contract(TokenEmission).at(shares_addr);
shares.approve('0xc9b6815b47a14b20599ea814c2fb10260d1abdb9', 1, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 2 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/21.png)

### Обращаемся к "second lesson->Execute" и передаем адрес dao в ответ получаем 50air

```
var secondLesson_addr = '0x67eb3824613dd4e05b6a442811564f2697bc3f43';
var SecondLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"},{"name":"_shares_name","type":"string"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"ownerAir","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"airalab_learning_center","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_ownerAir","type":"address"},{"name":"_airalab_learning_center","type":"address"}],"type":"constructor"}];
var secondLesson = web3.eth.contract(SecondLesson).at(secondLesson_addr);
secondLesson.execute(dao_addr, "Mars colony shares", {from:web3.eth.accounts[0], gas:900000})
```

![Урок 2 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/22.png)

Проверяем баланс air

![Урок 2 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/23.png)

## Урок 3

### Создаем токен эзер с помощью билдера

```
var BuilderTokenEther = [{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = eth.contract(BuilderTokenEther).at(factory.getModule("Aira BuilderTokenEther"))
builder.create('Mars colony tokens', 'MCT', {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var credits_addr = builder.getLastContract()
```

![Урок 3 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/31.png)
![Урок 3 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/32.png)

### Переводим на контракт токена 0.1

```
eth.sendTransaction({from:web3.eth.accounts[0], to:credits_addr, value: web3.toWei('0.1', 'ether')})
```

![Урок 3 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/33.png)

### Запускаем выполнение урока передав адрес токена

```
var thirdLesson_addr = '0xea46b677f04e6e7128627edcb8baf21a60b65972';
var ThirdLesson = [{"constant":false,"inputs":[{"name":"_token","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"ownerAir","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"airalab_learning_center","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_ownerAir","type":"address"}],"type":"constructor"}];
var thirdLesson = web3.eth.contract(ThirdLesson).at(thirdLesson_addr);
thirdLesson.execute(credits_addr, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 3 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/34.png)

Проверяем баланс air

![Урок 3 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/35.png)

## Урок 4

### Создаем proposal

```
var BuilderCashFlow = [{"constant":false,"inputs":[{"name":"_credits","type":"address"},{"name":"_shares","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderCashFlow).at(factory.getModule("Aira BuilderCashFlow"));
builder.create(credits_addr, shares_addr, {from: eth.accounts[0], gas: 2000000, value: builder.buildingCost()})
var cashflow_addr = builder.getLastContract()
```

![Урок 4 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/41.png)
![Урок 4 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/42.png)

переводим токены эфиров на контракт cashflow

```
var TokenEther = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"withdraw","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[],"name":"refill","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var credits = web3.eth.contract(TokenEther).at(credits_addr);
credits.transfer(cashflow_addr, 100000000000000000, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 4 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/43.png)

credits.balanceOf(cashflow_addr)

![Урок 4 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/44.png)

```
var CashFlow = [{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"proposals","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_total","type":"uint256"},{"name":"_description","type":"string"}],"name":"proposal","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"},{"name":"_value","type":"uint256"}],"name":"refund","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"},{"name":"_value","type":"uint256"}],"name":"fund","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"},{"name":"_value","type":"uint256"}],"name":"fundback","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"nominalSharePrice","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"inputs":[{"name":"_credits","type":"address"},{"name":"_shares","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"proposal","type":"address"}],"name":"Created","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"proposal","type":"address"}],"name":"Updated","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"proposal","type":"address"}],"name":"Closed","type":"event"}];
var cashflow = web3.eth.contract(CashFlow).at(cashflow_addr);
cashflow.proposal(web3.eth.accounts[0], 1, "description", {from:web3.eth.accounts[0], gas:900000})
var proposal_addr = cashflow.proposals(0)
```

![Урок 4 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/45.png)
![Урок 4 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/46.png)

### Даем approve для cashflow для снятия акций

```
var TokenEmission = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var shares = web3.eth.contract(TokenEmission).at(shares_addr);
shares.approve(cashflow_addr, 1, {from:web3.eth.accounts[0], gas:900000});
```

![Урок 4 шаг 7](https://raw.githubusercontent.com/airalab/learning-center/master/img/47.png)

### Голосуем за пропосал
```
cashflow.fund(proposal_addr, 1, {from:web3.eth.accounts[0], gas:3000000});
```

![Урок 4 шаг 8](https://raw.githubusercontent.com/airalab/learning-center/master/img/48.png)

### Запускаем выполнение урока передав адрес proposal и сумму

```
var fourthLesson_addr = '0x37c215b3ef4ea60876084928b923e7c903f9da26';
var FourthLesson = [{"constant":false,"inputs":[{"name":"_proposal","type":"address"},{"name":"_total","type":"uint256"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"ownerAir","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_ownerAir","type":"address"}],"type":"constructor"}];
var fourthLesson = web3.eth.contract(FourthLesson).at(fourthLesson_addr);
fourthLesson.execute(proposal_addr, 1, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 4 шаг 9](https://raw.githubusercontent.com/airalab/learning-center/master/img/49.png)

Проверяем баланс air

![Урок 4 шаг 10](https://raw.githubusercontent.com/airalab/learning-center/master/img/410.png)

## Урок 5

### Создаем контракт ShareSale с помощью билдера

```
var BuilderShareSale = [{"constant":false,"inputs":[{"name":"_cashflow","type":"address"},{"name":"_price_wei","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderShareSale).at(factory.getModule("Aira BuilderShareSale"));
builder.create(cashflow_addr, 1000000000000000, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var shareSale_addr = builder.getLastContract()
```

![Урок 5 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/51.png)
![Урок 5 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/52.png)

### Переводим акции на контракт shareSale

```
var TokenEmission = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var shares = web3.eth.contract(TokenEmission).at(shares_addr);
shares.transfer(shareSale_addr, 100, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 5 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/53.png)

### Сколько сейчас акций

```
shares.balanceOf(web3.eth.accounts[0])
```

![Урок 5 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/54.png)

### Закрываем сделку

```
var ShareSale = [{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":false,"inputs":[],"name":"available","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"closed","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_price_wei","type":"uint256"}],"name":"setPrice","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"priceWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"cashflow","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_cashflow","type":"address"},{"name":"_price_wei","type":"uint256"}],"type":"constructor"}];
var shareSale = web3.eth.contract(ShareSale).at(shareSale_addr);
eth.sendTransaction({from:web3.eth.accounts[0], to:shareSale_addr, gas: 3000000, value: (shareSale.available.call() * shareSale.priceWei())})
```

![Урок 5 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/55.png)

### Проверяем что акции получили

```
shares.balanceOf(web3.eth.accounts[0])
```

![Урок 5 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/56.png)

### Запускаем выполнение урока передав адрес shareSale

```
var fifthLesson_addr = '0x552a1d7496953d3f2b255d02b62056e41c29934e';
var FifthLesson = [{"constant":false,"inputs":[{"name":"_shareSale","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"ownerAir","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_ownerAir","type":"address"}],"type":"constructor"}];
var fifthLesson = web3.eth.contract(FifthLesson).at(fifthLesson_addr);
fifthLesson.execute(shareSale_addr, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 5 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/57.png)

Проверяем баланс air

![Урок 5 шаг 7](https://raw.githubusercontent.com/airalab/learning-center/master/img/58.png)

## Урок 6

### Создаем контракт Market с помощью билдера

```
var BuilderMarket = [{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderMarket).at(factory.getModule("Aira BuilderMarket"));
builder.create({from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var market_addr = builder.getLastContract()
```

![Урок 6 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/61.png)
![Урок 6 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/62.png)

### Выставляем два лота, на продажу и на покупку

```
var Market = [{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"remove","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"first","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_seller","type":"address"},{"name":"_sale","type":"address"},{"name":"_buy","type":"address"},{"name":"_value","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"append","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_lot","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"size","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"next","outputs":[{"name":"","type":"address"}],"type":"function"}];
var market = web3.eth.contract(Market).at(market_addr);
market.append(eth.accounts[0], shares_addr, credits_addr, 1000, 5, {from:web3.eth.accounts[0], gas:900000})
market.append(eth.accounts[0], credits_addr, shares_addr, 500, 1, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 6 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/63.png)

### Запускаем выполнение урока передав адрес Market

```
var sixthLesson_addr = '0xe5d7975ce83f3297df459602e2e93dd5b96810d2';
var SixthLesson = [{"constant":false,"inputs":[{"name":"_market","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"ownerAir","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_ownerAir","type":"address"}],"type":"constructor"}];
var sixthLesson = web3.eth.contract(SixthLesson).at(sixthLesson_addr);
sixthLesson.execute(market_addr, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 6 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/64.png)

Проверяем баланс air

![Урок 6 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/65.png)
