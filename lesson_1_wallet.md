# Урок 1 в Ethereum Wallet

Для начала, добавим токен Air, в список токенов. В этих токенах будет производиться награда за выполнение уроков. Нажмем `Watch token` в разделе `Contracts`.

![Screenshot 10](https://github.com/airalab/learning-center/blob/master/img/Screenshot_10.png)

Token Address - 0x000755654006c311edc395f331b61dfe8e8d4dc1  
Token Name - Air  
Token Symbol - Air

Для того, чтобы создать `DAO core` и `Shareholder token` необходимо обратиться к фабрике DAO отправив транзакцию со своего аккаунта к сборщику `Aira BuilderDAO` из реестра `DAO factory`. Чтобы это сделать, сначала нужно добавить контракт `Factory Core` в список ваших контрактов в разделе `Contracts`.

![Screenshot 4](https://github.com/airalab/learning-center/blob/master/img/Screenshot_4.png)

Contract Name - Factory Core  
Address - `0xa76422591378d14fb6d94c9da48a42498d8b51da`  
Abi:
```js
 [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"getModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getModuleName","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"interfaceOf","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"removeModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"firstModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"}],"name":"setModule","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"nextModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"}]  
```

Далее, нужно найти в реестре `Factory Core`, адрес сборщика `Aira BuilderDAO`:

![Screenshot 5](https://github.com/airalab/learning-center/blob/master/img/Screenshot_5.png)

И добавить его в список ваших контрактов:

![Screenshot 6](https://github.com/airalab/learning-center/blob/master/img/Screenshot_6.png)

Contract Name - Aira BuilderDAO  
Address - тот, который вы найдете  
Abi:
```js
 [{"constant":false,"inputs":[{"name":"_dao_name","type":"string"},{"name":"_dao_description","type":"string"},{"name":"_shares_name","type":"string"},{"name":"_shares_symbol","type":"string"},{"name":"_shares_count","type":"uint256"}],"name":"create","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_price","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]
 ```

Теперь у нас есть контракт сборщика DAO - `Aira BuilderDAO`. Мы готовы к созданию DAO. Чтобы это сделать, необходимо вызвать функцию `create` в сборщике `Aira BuilderDAO`:

![Screenshot 7](https://github.com/airalab/learning-center/blob/master/img/Screenshot_7.png)

Заполняем dao_name, dao_desc и т.д. Не забудьте указать правильный аккаунт, этот аккаунт будет владельцем DAO. Также, необходимо отправить некоторое кол-во эфиров с этой транзакцией, но не менее 0.01 Eth. Сборщики берут комиссию за свои услуги и умеют сдавать сдачу, поэтому можно отправлять любую сумму больше 0.01 Eth. Нажимаем кнопку `Execute`.

После того, как транзакция будет подтверждена сетью, в контракте `BuilderDAO`, в разделе `Latest Events` можно будет увидеть информацию созданном для вас `DAO Core`.

![Screenshot 8](https://github.com/airalab/learning-center/blob/master/img/Screenshot_8.png)

Instanse - это адрес созданного для вас `DAO Core`. Чтобы начать работу с ним, нужно добавить его в список ваших контрактов.

![Screenshot 9](https://github.com/airalab/learning-center/blob/master/img/Screenshot_9.png)

Contract Name - My Test DAO  
Address - адрес из instance
Abi:
```js
 [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"getModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getModuleName","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"interfaceOf","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"removeModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"firstModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"}],"name":"setModule","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"nextModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"}]
```

Добавим `Shareholder token` в список токенов. Для этого посмотрим в контракт `DAO Core`, в раздел `First Module`, адрес первого модуля и есть адрес `Shareholder token`.

`DAO Core` создано, осталось завершить урок, для этого нужно добавить контракт урока `Lesson 1` в список ваших контрактов.

Contract Name - Lesson 1  
Address - 0xb62138cf11f4c1d7248afe82acb8681406211c85  
Abi:
```js
 [{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"},{"name":"_shares","type":"address"},{"name":"_shares_name","type":"string"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}]
 ```

Теперь вызовем в нем, функцию `Execute`, указав адрес `DAO core`, адрес `Shareholder token` и его название.

![Screenshot 11](https://github.com/airalab/learning-center/blob/master/img/Screenshot_11.png)

Если вы всё сделали правильно, на вашем аккаунте появятся 50 AIR.

![Screenshot 12](https://github.com/airalab/learning-center/blob/master/img/Screenshot_12.png)
