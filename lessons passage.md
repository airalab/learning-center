# Выполнение уроков с использованием клиента сети geth.

**Токен air**

```
var tokenair_addr = '0x000755654006c311edc395f331b61dfe8e8d4dc1';
var tokenair_abi = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var tokenair = web3.eth.contract(tokenair_abi).at(tokenair_addr);
tokenair.getBalance()
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
var Core = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"getModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getModuleName","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"interfaceOf","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"removeModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"firstModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"}],"name":"setModule","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"nextModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"}];
var factory = eth.contract(Core).at("0xa76422591378d14fb6d94c9da48a42498d8b51da")
var builder = eth.contract(BuilderDAO).at(factory.getModule("Aira BuilderDAO"))
builder.create('Martian colony', 'DAO for first human colony on Mars', 'Mars colony shares', 'MRS', 10000, {from: eth.accounts[0], gas: 3000000, value: builder.buildingCost()})
			   
var dao_addr = builder.getLastContract()
var core = web3.eth.contract(Core).at(dao_addr);
core.getModule('Mars colony shares');
```

![Урок 1 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/11.png)
![Урок 1 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/12.png)

### Обращаемся к "first lesson->Execute" и передаем адрес dao в ответ получаем 50air

```
var firstLesson_addr = '0xb62138cf11f4c1d7248afe82acb8681406211c85';
var FirstLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"},{"name":"_shares","type":"address"},{"name":"_shares_name","type":"string"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var firstLesson = web3.eth.contract(FirstLesson).at(firstLesson_addr);
firstLesson.execute(dao_addr, core.getModule('Mars colony shares'), "Mars colony shares", {from:web3.eth.accounts[0], gas:900000})
```

![Урок 1 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/13.png)

Проверяем баланс air

![Урок 1 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/14.png)

## Урок 2

### Даем approve на 1 акцию (контракт урока ожидает approve на адрес Airalab learning center 0xd5ec7544753fcf759b4dd37210dab113fce76814)

```
var TokenEmission = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var shares = web3.eth.contract(TokenEmission).at(core.getModule('Mars colony shares'));
shares.approve('0xd5ec7544753fcf759b4dd37210dab113fce76814', 1, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 2 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/21.png)

### Обращаемся к "second lesson->Execute" и передаем адрес dao в ответ получаем 50air

```
var secondLesson_addr = '0x62808bc94e156f45a9f8e7e41ba969acfc467bed';
var SecondLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"},{"name":"_shares_name","type":"string"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"airalab_learning_center","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"},{"name":"_airalab_learning_center","type":"address"}],"type":"constructor"}];
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
builder.create('Mars colony credits', 'MRC', {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
builder.getLastContract()
```

![Урок 3 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/31.png)
![Урок 3 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/32.png)

### Добавляем в реестр контрактов организации новый токен

```
core.setModule("Ether funds", builder.getLastContract(), "github://airalab/core/token/TokenEther.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Ether funds")
```

![Урок 3 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/33.png)
![Урок 3 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/34.png)

### Переводим на контракт токена 0.1

```
eth.sendTransaction({from:web3.eth.accounts[0], to:core.getModule('Ether funds'), value: web3.toWei('0.1', 'ether')})
```

![Урок 3 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/35.png)

### Запускаем выполнение урока передав адрес токена

```
var thirdLesson_addr = '0xedb74faac6cf598fac93d5871bef07e3c7684193';
var ThirdLesson = [{"constant":false,"inputs":[{"name":"_token","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"airalab_learning_center","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var thirdLesson = web3.eth.contract(ThirdLesson).at(thirdLesson_addr);
thirdLesson.execute(core.getModule('Ether funds'), {from:web3.eth.accounts[0], gas:900000})
```

![Урок 3 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/36.png)

Проверяем баланс air

![Урок 3 шаг 7](https://raw.githubusercontent.com/airalab/learning-center/master/img/37.png)

## Урок 4

### Создаем контракт ShareSale с помощью билдера

```
var BuilderShareSale = [{"constant":false,"inputs":[{"name":"_cashflow","type":"address"},{"name":"_price_wei","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderShareSale).at(factory.getModule("Aira BuilderShareSale"));
builder.create(web3.eth.accounts[0], core.getModule('Ether funds'), core.getModule('Mars colony shares'), 1000000000000000, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var shareSale_addr = builder.getLastContract()
```

![Урок 4 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/41.png)
![Урок 4 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/42.png)

### Переводим акции на контракт shareSale

```
var TokenEmission = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var shares = web3.eth.contract(TokenEmission).at(core.getModule('Mars colony shares'));
shares.transfer(shareSale_addr, 100, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 4 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/43.png)

### Сколько сейчас акций

```
shares.balanceOf(web3.eth.accounts[0])
```

![Урок 4 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/44.png)

### Закрываем сделку

```
var ShareSale = [{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"closed","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"etherFund","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_price_wei","type":"uint256"}],"name":"setPrice","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"priceWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"target","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"type":"constructor"}];
var shareSale = web3.eth.contract(ShareSale).at(shareSale_addr);
eth.sendTransaction({from:web3.eth.accounts[0], to:shareSale_addr, gas: 3000000, value: (shareSale.available.call() * shareSale.priceWei())})
```

![Урок 4 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/45.png)

### Проверяем что акции получили

```
shares.balanceOf(web3.eth.accounts[0])
```

![Урок 4 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/46.png)

### Запускаем выполнение урока передав адрес shareSale

```
var fourthLesson_addr = '0x8db39604c8a544165b16d1b6ac2bfd0f9cfac9f2';
var FourthLesson = [{"constant":false,"inputs":[{"name":"_shareSale","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var fourthLesson = web3.eth.contract(FourthLesson).at(fourthLesson_addr);
fourthLesson.execute(shareSale_addr, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 4 шаг 7](https://raw.githubusercontent.com/airalab/learning-center/master/img/47.png)

Проверяем баланс air

![Урок 4 шаг 8](https://raw.githubusercontent.com/airalab/learning-center/master/img/48.png)

## Урок 5

### Создаем токен для внутреннего рынка

```
var BuilderTokenEmission = [{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderTokenEmission).at(factory.getModule("Aira BuilderTokenEmission"));
builder.create('DAO credit', 'DCT', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
builder.getLastContract()
```

![Урок 5 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/51.png)
![Урок 5 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/52.png)

### Добавляем в реестр контрактов организации новый токен

```
core.setModule("DAO credit", builder.getLastContract(), "github://airalab/core/token/TokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("DAO credit")
```

![Урок 5 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/53.png)
![Урок 5 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/54.png)

### Запускаем выполнение урока передав адрес нового токена и адрес DAO

```
var fifthLesson_addr = '0x9ec00d5b0fe4f9497596c67d96f0c57115dce787';
var FifthLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_token_name","type":"string"},{"name":"_dao","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var fifthLesson = web3.eth.contract(FifthLesson).at(fifthLesson_addr);
fifthLesson.execute('DAO credit', dao_addr, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 5 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/55.png)

Проверяем баланс air

![Урок 5 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/56.png)

## Урок 6

### Создаем контракт Market с помощью билдера

```
var BuilderMarket = [{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderMarket).at(factory.getModule("Aira BuilderMarket"));
builder.create({from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
builder.getLastContract()
```

![Урок 6 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/61.png)
![Урок 6 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/62.png)

### Добавляем в реестр контрактов организации маркет

```
core.setModule("Market", builder.getLastContract(), "github://airalab/core/market/Market.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Market")
```

![Урок 6 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/63.png)
![Урок 6 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/64.png)

### Выставляем два лота, на продажу и на покупку

```
var Market = [{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"remove","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"first","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_enable","type":"bool"}],"name":"setRegulator","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_seller","type":"address"},{"name":"_sale","type":"address"},{"name":"_buy","type":"address"},{"name":"_quantity_sale","type":"uint256"},{"name":"_quantity_buy","type":"uint256"}],"name":"append","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_lot","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"size","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"next","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"regulatorEnabled","outputs":[{"name":"","type":"bool"}],"type":"function"}];
var market = web3.eth.contract(Market).at(core.getModule('Market'));
market.append(eth.accounts[0], core.getModule('Mars colony shares'), core.getModule('DAO credit'), 1000, 5, {from:web3.eth.accounts[0], gas:900000})
market.append(eth.accounts[0], core.getModule('DAO credit'), core.getModule('Mars colony shares'), 500, 1, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 6 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/65.png)

### Запускаем выполнение урока передав адрес Market

```
var sixthLesson_addr = '0xefd66212e57db8987ae5030733bd30ef56d64b66';
var SixthLesson = [{"constant":false,"inputs":[{"name":"_market","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var sixthLesson = web3.eth.contract(SixthLesson).at(sixthLesson_addr);
sixthLesson.execute(core.getModule('Market'), {from:web3.eth.accounts[0], gas:900000})
```

![Урок 6 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/66.png)

Проверяем баланс air

![Урок 6 шаг 7](https://raw.githubusercontent.com/airalab/learning-center/master/img/67.png)

## Урок 7

### Создаем контракт MarketRegulator с помощью билдера

```
var BuilderDAOMarketRegulator = [{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_shares","type":"address"},{"name":"_core","type":"address"},{"name":"_market","type":"address"},{"name":"_dao_credits","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderDAOMarketRegulator).at(factory.getModule("Aira BuilderDAOMarketRegulator"));
builder.create(core.getModule('Mars colony shares'), dao_addr, core.getModule('Market'), core.getModule('DAO credit'), {from: eth.accounts[0], gas: 2000000, value: builder.buildingCost()})
builder.getLastContract()
```

![Урок 7 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/71.png)
![Урок 7 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/72.png)

### Добавляем в реестр контрактов организации маркет регулятор

```
core.setModule("Market regulator", builder.getLastContract(), "github://airalab/core/market/DAOMarketRegulator.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Market regulator")
```

![Урок 7 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/73.png)
![Урок 7 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/74.png)

### Переводим рынок в закрытый режим

```
var Market = [{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"remove","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"first","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_enable","type":"bool"}],"name":"setRegulator","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_seller","type":"address"},{"name":"_sale","type":"address"},{"name":"_buy","type":"address"},{"name":"_quantity_sale","type":"uint256"},{"name":"_quantity_buy","type":"uint256"}],"name":"append","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_lot","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"size","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"next","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"regulatorEnabled","outputs":[{"name":"","type":"bool"}],"type":"function"}];
var market = web3.eth.contract(Market).at(core.getModule('Market'));
market.setRegulator(true, {from: eth.accounts[0], gas: 100000});
market.regulatorEnabled();
```

![Урок 7 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/75.png)
![Урок 7 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/76.png)

### Делегируем рынок регулятору

```
market.delegate(core.getModule('Market regulator'), {from: eth.accounts[0], gas: 100000});
market.owner()
```

![Урок 7 шаг 7](https://raw.githubusercontent.com/airalab/learning-center/master/img/77.png)
![Урок 7 шаг 8](https://raw.githubusercontent.com/airalab/learning-center/master/img/78.png)

### Создаем новый токен, который будет отражать ценность на рынке

```
var BuilderTokenEmission = [{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderTokenEmission).at(factory.getModule("Aira BuilderTokenEmission"));
builder.create('Сoaching', 'C', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var coaching_addr = builder.getLastContract()
```

![Урок 7 шаг 9](https://raw.githubusercontent.com/airalab/learning-center/master/img/79.png)
![Урок 7 шаг 10](https://raw.githubusercontent.com/airalab/learning-center/master/img/710.png)

### Проверяем количество лотов на рынке

```
market.size()
```

![Урок 7 шаг 11](https://raw.githubusercontent.com/airalab/learning-center/master/img/711.png)

### Пробуем добавить лот

```
var DAOMarketRegulator = [{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_sale","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"sale","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"notifyDeal","outputs":[],"type":"function"},{"constant":false,"inputs":[],"name":"sign","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"market","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_asset","type":"address"}],"name":"currentRuleOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buy","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"buy","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_rule","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"dao_core","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_shares","type":"address"},{"name":"_core","type":"address"},{"name":"_market","type":"address"},{"name":"_dao_credits","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"lot","type":"address"}],"name":"NewLot","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_value","type":"uint256"}],"name":"Emission","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"agent","type":"address"}],"name":"MarketAgentSign","type":"event"}];
var marketRegulator = web3.eth.contract(DAOMarketRegulator).at(core.getModule('Market regulator'));
marketRegulator.sale(coaching_addr, 1000, 5, {from:web3.eth.accounts[0], gas:900000})
market.size()
```

![Урок 7 шаг 12](https://raw.githubusercontent.com/airalab/learning-center/master/img/712.png)
![Урок 7 шаг 13](https://raw.githubusercontent.com/airalab/learning-center/master/img/713.png)

### Добавляем лот в реестр DAO

```
var Core = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"getModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getModuleName","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"interfaceOf","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"removeModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"firstModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"}],"name":"setModule","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"nextModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"}];
var core = eth.contract(Core).at(dao_addr)
core.setModule('Сoaching token', coaching_addr, "github://airalab/core/token/TokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.contains(coaching_addr)
```

![Урок 7 шаг 14](https://raw.githubusercontent.com/airalab/learning-center/master/img/714.png)
![Урок 7 шаг 15](https://raw.githubusercontent.com/airalab/learning-center/master/img/715.png)

### Снова добавляем лот

```
marketRegulator.sale(coaching_addr, 1000, 5, {from:web3.eth.accounts[0], gas:900000})
market.size()
```

![Урок 7 шаг 16](https://raw.githubusercontent.com/airalab/learning-center/master/img/716.png)
![Урок 7 шаг 17](https://raw.githubusercontent.com/airalab/learning-center/master/img/717.png)

### Запускаем выполнение урока передав адрес Market и адрес DAOMarketRegulator

```
var seventhLesson_addr = '0xcbbf033510b9258b1657e2aadcc8c4b2f7d4752d';
var SeventhLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_market","type":"address"},{"name":"_regulator","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var seventhLesson = web3.eth.contract(SeventhLesson).at(seventhLesson_addr);
seventhLesson.execute(core.getModule('Market'), core.getModule('Market regulator'), {from:web3.eth.accounts[0], gas:900000})
```

![Урок 7 шаг 718](https://raw.githubusercontent.com/airalab/learning-center/master/img/718.png)

Проверяем баланс air

![Урок 7 шаг 719](https://raw.githubusercontent.com/airalab/learning-center/master/img/719.png)

## Урок 8

### Ловим события для новых контрактов DAOMarketAgent

```
var e = marketRegulator.MarketAgentSign({}, '', function(error,result){
    console.log(result.args.agent);
})
```

![Урок 8 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/81.png)

### Создаем контракт агента рынка DAOMarketAgent с помощью регулятора рынка

```
marketRegulator.sign({from:web3.eth.accounts[0], gas:900000});
```

![Урок 8 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/82.png)

### Добавляем в реестр контрактов организации адрес нового контракта из пойманого события

```
core.setModule("Market agent", '0x2ca27392fe7e5851893543a9db5647c3f7317dc4', "github://airalab/core/market/DAOMarketAgent.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Market agent")
```

![Урок 8 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/83.png)
![Урок 8 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/84.png)

### Запускаем выполнение урока передав адрес Market и адрес DAOMarketAgent

```
var eighthLesson_addr = '0x106c4cad1fb1921d3a3347b353eb4fc576ee5fe3';
var EighthLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_market","type":"address"},{"name":"_agent","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var eighthLesson = web3.eth.contract(EighthLesson).at(eighthLesson_addr);
eighthLesson.execute(core.getModule('Market'), core.getModule('Market agent'), {from:web3.eth.accounts[0], gas:900000})
```

![Урок 8 шаг 85](https://raw.githubusercontent.com/airalab/learning-center/master/img/85.png)

Проверяем баланс air

![Урок 8 шаг 86](https://raw.githubusercontent.com/airalab/learning-center/master/img/86.png)

## Урок 9

### Создаем контракт MarketRuleConstant с помощью билдера

```
var BuilderMarketRuleConstant = [{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_emission","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderMarketRuleConstant).at(factory.getModule("Aira BuilderMarketRuleConstant"));
builder.create(100, {from: eth.accounts[0], gas: 2000000, value: builder.buildingCost()})
builder.getLastContract()
```

![Урок 9 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/91.png)
![Урок 9 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/92.png)

### Добавляем в реестр контрактов организации адрес нового контракта

```
core.setModule("Market rule constant", builder.getLastContract(), "github://airalab/core/market/MarketRuleConstant.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Market rule constant")
```

![Урок 9 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/93.png)
![Урок 9 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/94.png)

### Даем approve акций для контракта DAOMarketRegulator

```
var TokenEmission = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var shares = web3.eth.contract(TokenEmission).at(core.getModule('Mars colony shares'));
shares.approve(core.getModule('Market regulator'), 1, {from:web3.eth.accounts[0], gas:900000});
```

![Урок 9 шаг 95](https://raw.githubusercontent.com/airalab/learning-center/master/img/95.png)

### Голосуем за правило

```
marketRegulator.pollUp(core.getModule('DAO credit'), core.getModule('Market rule constant'), 1, {from:web3.eth.accounts[0], gas:900000});
```

![Урок 9 шаг 96](https://raw.githubusercontent.com/airalab/learning-center/master/img/96.png)

### Обратиться к контракту DAO credits от аккаунта owner для смены адреса владельца на адрес контракта регулятора рынка.

```
var TokenEther = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"withdraw","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[],"name":"refill","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var credits = web3.eth.contract(TokenEther).at(core.getModule('DAO credit'));
credits.delegate(core.getModule('Market regulator'), {from:web3.eth.accounts[0], gas:900000})
```

![Урок 9 шаг 97](https://raw.githubusercontent.com/airalab/learning-center/master/img/97.png)

### Запускаем выполнение урока передав адрес DAOMarketRegulator, DAO credits и адрес MarketRuleConstant

```
var ninthLesson_addr = '0x92bfe325d109ec668752d92c54d4bf3678279607';
var NinthLesson = [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_regulator","type":"address"},{"name":"_asset","type":"address"},{"name":"_rule","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var ninthLesson = web3.eth.contract(NinthLesson).at(ninthLesson_addr);
ninthLesson.execute(core.getModule('Market regulator'), core.getModule('DAO credit'), core.getModule('Market rule constant'), {from:web3.eth.accounts[0], gas:900000})
```

![Урок 9 шаг 98](https://raw.githubusercontent.com/airalab/learning-center/master/img/98.png)

Проверяем баланс air

![Урок 9 шаг 99](https://raw.githubusercontent.com/airalab/learning-center/master/img/99.png)

## Урок 10

### Добавляем в реестр контрактов организации Token emission builder

```
core.setModule("Token emission builder", factory.getModule("Aira BuilderTokenEmission"), "github://airalab/core/builder/BuilderTokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Token emission builder")
```

![Урок 10 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/101.png)
![Урок 10 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/102.png)

### Создаем 4 новых токена

```
var BuilderTokenEmission = [{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderTokenEmission).at(core.getModule("Token emission builder"));

builder.create('Assset 1', 'A1', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var assset1_addr = builder.getLastContract()

builder.create('Assset 2', 'A2', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var assset2_addr = builder.getLastContract()

builder.create('Service 1', 'S1', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var service1_addr = builder.getLastContract()

builder.create('Service 2', 'S2', 0, 100, {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
var service2_addr = builder.getLastContract()
service2_addr
```

![Урок 10 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/103.png)
![Урок 10 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/104.png)
![Урок 10 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/105.png)
![Урок 10 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/106.png)
![Урок 10 шаг 7](https://raw.githubusercontent.com/airalab/learning-center/master/img/107.png)
![Урок 10 шаг 8](https://raw.githubusercontent.com/airalab/learning-center/master/img/108.png)
![Урок 10 шаг 9](https://raw.githubusercontent.com/airalab/learning-center/master/img/109.png)
![Урок 10 шаг 10](https://raw.githubusercontent.com/airalab/learning-center/master/img/1010.png)

### Добавляем новые лоты в реестр DAO, чтоб можно было ими торговать на рынке

```
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

![Урок 10 шаг 11](https://raw.githubusercontent.com/airalab/learning-center/master/img/1011.png)
![Урок 10 шаг 12](https://raw.githubusercontent.com/airalab/learning-center/master/img/1012.png)
![Урок 10 шаг 13](https://raw.githubusercontent.com/airalab/learning-center/master/img/1013.png)
![Урок 10 шаг 14](https://raw.githubusercontent.com/airalab/learning-center/master/img/1014.png)
![Урок 10 шаг 15](https://raw.githubusercontent.com/airalab/learning-center/master/img/1015.png)
![Урок 10 шаг 16](https://raw.githubusercontent.com/airalab/learning-center/master/img/1016.png)
![Урок 10 шаг 17](https://raw.githubusercontent.com/airalab/learning-center/master/img/1017.png)
![Урок 10 шаг 18](https://raw.githubusercontent.com/airalab/learning-center/master/img/1018.png)

### Добавляем на рынок по лоту каждого токена

```
var DAOMarketRegulator = [{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_sale","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"sale","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"notifyDeal","outputs":[],"type":"function"},{"constant":false,"inputs":[],"name":"sign","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"market","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_asset","type":"address"}],"name":"currentRuleOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buy","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"buy","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_rule","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"dao_core","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_shares","type":"address"},{"name":"_core","type":"address"},{"name":"_market","type":"address"},{"name":"_dao_credits","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"lot","type":"address"}],"name":"NewLot","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_value","type":"uint256"}],"name":"Emission","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"agent","type":"address"}],"name":"MarketAgentSign","type":"event"}];
var marketRegulator = web3.eth.contract(DAOMarketRegulator).at(core.getModule('Market regulator'));
marketRegulator.sale(assset1_addr, 1, 2, {from:web3.eth.accounts[0], gas:900000})
marketRegulator.buy(assset2_addr, 2, 1, {from:web3.eth.accounts[0], gas:900000})
marketRegulator.sale(service1_addr, 1, 5, {from:web3.eth.accounts[0], gas:900000})
marketRegulator.buy(service2_addr, 4, 2, {from:web3.eth.accounts[0], gas:900000})
```

![Урок 10 шаг 19](https://raw.githubusercontent.com/airalab/learning-center/master/img/1019.png)

### Запускаем выполнение урока передав адрес контракта Market

```
var tenthLesson_addr = '0x72655afc8dcba6f43874d157bb619d61c526b90e';
var TenthLesson = [{"constant":false,"inputs":[{"name":"_market","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var tenthLesson = web3.eth.contract(TenthLesson).at(tenthLesson_addr);
tenthLesson.execute(core.getModule('Market'), {from:web3.eth.accounts[0], gas:900000})
```

![Урок 10 шаг 20](https://raw.githubusercontent.com/airalab/learning-center/master/img/1020.png)

Проверяем баланс air

![Урок 10 шаг 21](https://raw.githubusercontent.com/airalab/learning-center/master/img/1021.png)

## Урок 11

### Создаем контракт BoardOfDirectors с помощью билдера

```
var BuilderBoardOfDirectors = [{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderBoardOfDirectors).at(factory.getModule("Aira BuilderBoardOfDirectors"));
builder.create(dao_addr, core.getModule('Mars colony shares'), core.getModule('Ether funds'), {from: eth.accounts[0], gas: 1000000, value: builder.buildingCost()})
builder.getLastContract()
```

![Урок 11 шаг 1](https://raw.githubusercontent.com/airalab/learning-center/master/img/111.png)
![Урок 11 шаг 2](https://raw.githubusercontent.com/airalab/learning-center/master/img/112.png)

### Добавляем в реестр контрактов организации адрес Board of Directors

```
core.setModule("Board of Directors", builder.getLastContract(), "github://airalab/core/cashflow/BoardOfDirectors.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Board of Directors")
```

![Урок 11 шаг 3](https://raw.githubusercontent.com/airalab/learning-center/master/img/113.png)
![Урок 11 шаг 4](https://raw.githubusercontent.com/airalab/learning-center/master/img/114.png)

### Создать токен с помощью которого будем голосовать

```
var BuilderTokenEmission = [{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}];
var builder = web3.eth.contract(BuilderMarketRuleConstant).at(core.getModule("Token emission builder"));
builder.create('Directors voting token', 'DVT', 0, 400, {from: eth.accounts[0], gas: 2000000, value: builder.buildingCost()})
builder.getLastContract()
```

![Урок 11 шаг 5](https://raw.githubusercontent.com/airalab/learning-center/master/img/115.png)
![Урок 11 шаг 6](https://raw.githubusercontent.com/airalab/learning-center/master/img/116.png)

### Добавляем в реестр контрактов организации адрес токена для голосования

```
core.setModule("Voting token", builder.getLastContract(), "github://airalab/core/token/TokenEmission.sol", true, {from:web3.eth.accounts[0], gas:300000})
core.getModule("Voting token")
```

![Урок 11 шаг 7](https://raw.githubusercontent.com/airalab/learning-center/master/img/117.png)
![Урок 11 шаг 8](https://raw.githubusercontent.com/airalab/learning-center/master/img/118.png)

### Создаем голосование

```
var BoardOfDirectors = [{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_index","type":"uint256"}],"name":"proposalDone","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"removeCoreModule","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"setCoreModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_value","type":"uint256"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"fund","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_new_voting","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"voting","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"dao_core","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_dao_core","type":"address"},{"name":"_shares","type":"address"},{"name":"_credits","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"new_token","type":"address"}],"name":"VotingTokenChanged","type":"event"}];
var bod = web3.eth.contract(BuilderBoardOfDirectors).at(core.getModule("Board of Directors"));
bod.pollUp(core.getModule("Voting token"), 1, {from: eth.accounts[0], gas: 2000000})
```

![Урок 11 шаг 9](https://raw.githubusercontent.com/airalab/learning-center/master/img/119.png)

### Создаем proposal (чтоб создать proposal у аккаунт должен входить с состав директоров, те у него должны быть токены для голосования)

```
bod.fund(eth.accounts[0], 1, 'описание того на что тратим', 1467968200, 1467971988, {from: eth.accounts[0], gas: 2000000})
```

![Урок 11 шаг 10](https://raw.githubusercontent.com/airalab/learning-center/master/img/1110.png)

### Отдаем управление кредитами совету директоров

```
var TokenEther = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"withdraw","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[],"name":"refill","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var ether_credits = web3.eth.contract(TokenEther).at(core.getModule("Ether funds"));
ether_credits.delefate(core.getModule("Board of Directors"), {from: eth.accounts[0], gas: 2000000})
```

![Урок 11 шаг 11](https://raw.githubusercontent.com/airalab/learning-center/master/img/1111.png)

### Апрувим для контракта голосования токены которыми голосуем, как минимум 51%

```
var TokenEmission = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}];
var voting_token = web3.eth.contract(TokenEmission).at(core.getModule("Voting token"));
voting_token.approve(bod.voting(), 210, {from:web3.eth.accounts[0], gas:100000})
```

![Урок 11 шаг 12](https://raw.githubusercontent.com/airalab/learning-center/master/img/1112.png)

### Голосуем

```
var Voting = [{"constant":true,"inputs":[],"name":"current_proposal","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_count","type":"uint256"}],"name":"vote","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"},{"name":"","type":"address"}],"name":"voter_value","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"end_time","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"uint256"},{"name":"_count","type":"uint256"}],"name":"refund","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"proposal","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"start_time","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"proposal_target","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"total_value","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"voting_token","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"receiver","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_voting_token","type":"address"},{"name":"_receiver","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"index","type":"uint256"}],"name":"ProposalDone","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"index","type":"uint256"}],"name":"ProposalNew","type":"event"}];
var voting = web3.eth.contract(Voting).at(bod.voting());
voting.vote(210, {from:web3.eth.accounts[0], gas:300000})
```

![Урок 11 шаг 13](https://raw.githubusercontent.com/airalab/learning-center/master/img/1113.png)

### Запускаем выполнение урока передав адрес контракта совета директоров

```
var eleventhLesson_addr = '0xa420695e0efc14571b5368a2c5d1bf296192ce6e';
var EleventhLesson = [{"constant":false,"inputs":[{"name":"_bod","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}];
var eleventhLesson = web3.eth.contract(EleventhLesson).at(eleventhLesson_addr);
eleventhLesson.execute(core.getModule('Board of Directors'), {from:web3.eth.accounts[0], gas:900000})
```

![Урок 11 шаг 14](https://raw.githubusercontent.com/airalab/learning-center/master/img/1114.png)

Проверяем баланс air

![Урок 11 шаг 15](https://raw.githubusercontent.com/airalab/learning-center/master/img/1115.png)
