# Урок 1 в Ethereum Wallet

Для начала, добавим токен Air, в список токенов. В этих токенах будет производиться награда за выполнение уроков. Нажмем `Watch token` в разделе `Contracts`.

![Screenshot 10](/img/Screenshot_10.png)

Token Address - `0xA93a331098427bA53B11401B8dD342C2547C0ADf`  

Для того, чтобы создать `DAO core` и `Shareholder token` необходимо обратиться к фабрике DAO отправив транзакцию со своего аккаунта к сборщику `Aira BuilderDAO` из реестра `DAO factory`. Чтобы это сделать, сначала нужно добавить контракт `Factory Core` в список ваших контрактов в разделе `Contracts`.

![Screenshot 4](/img/Screenshot_4.png)

Contract Name - Factory Core  
Address - `0xCbb47dCbdF5EfB2882290D0Cf49a2181d79d43bb`

Abi:
```js
 [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"first","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"abiOf","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getName","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"get","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"remove","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"size","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"next","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_abi","type":"string"},{"name":"_constant","type":"bool"}],"name":"set","outputs":[],"payable":false,"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"module","type":"address"}],"name":"ModuleAdded","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"module","type":"address"}],"name":"ModuleRemoved","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"to","type":"address"}],"name":"ModuleReplaced","type":"event"}]  
```

Далее, нужно найти в реестре `Factory Core`, адрес сборщика `Aira BuilderDAO`:

![Screenshot 5](/img/Screenshot_5.png)

И добавить его в список ваших контрактов:

![Screenshot 6](/img/Screenshot_6.png)

Contract Name: `Aira BuilderDAO`  
Address: `0x5c0FdB272eD8641876f4eBce3634ebB6Dfc3aaca`  

Abi:
```js
[{"constant":false,"inputs":[{"name":"_uri","type":"string"}],"name":"setSecurityCheck","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_beneficiary","type":"address"}],"name":"setBeneficiary","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_dao_name","type":"string"},{"name":"_dao_description","type":"string"},{"name":"_shares_name","type":"string"},{"name":"_shares_symbol","type":"string"},{"name":"_shares_count","type":"uint256"},{"name":"_client","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"payable":true,"type":"function"},{"constant":true,"inputs":[],"name":"beneficiary","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"securityCheckURI","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"client","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]
 ```

Теперь у нас есть контракт сборщика DAO - `Aira BuilderDAO`. Мы готовы к созданию DAO. Чтобы это сделать, необходимо вызвать функцию `create` в сборщике `Aira BuilderDAO`:

![Screenshot 7](/img/Screenshot_7.png)

Заполняем dao_name, dao_desc и т.д. Не забудьте указать правильный аккаунт, этот аккаунт будет владельцем DAO. Также, необходимо отправить некоторое кол-во эфиров с этой транзакцией, но не менее 0.01 Eth. Сборщики берут комиссию за свои услуги и умеют сдавать сдачу, поэтому можно отправлять любую сумму больше 0.01 Eth. Нажимаем кнопку `Execute`.

После того, как транзакция будет подтверждена сетью, в контракте `Aira BuilderDAO`, в разделе `Latest Events` можно будет увидеть информацию созданном для вас `DAO Core`.

![Screenshot 8](/img/Screenshot_8.png)

Instance - это адрес созданного для вас `DAO Core`. Чтобы начать работу с ним, нужно добавить его в список ваших контрактов.

![Screenshot 9](/img/Screenshot_9.png)

Contract Name: My Test DAO  
Address: тот, который в instance


Abi:
```js
[{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"first","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"abiOf","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getName","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"get","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"remove","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"size","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"next","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_abi","type":"string"},{"name":"_constant","type":"bool"}],"name":"set","outputs":[],"payable":false,"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"module","type":"address"}],"name":"ModuleAdded","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"module","type":"address"}],"name":"ModuleRemoved","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"to","type":"address"}],"name":"ModuleReplaced","type":"event"}]
```

Добавим `Shareholder token` в список токенов. Для этого посмотрим в контракт `DAO Core`, в раздел `First Module`, адрес первого модуля и есть адрес `Shareholder token`.

`DAO Core` создано, осталось завершить урок, для этого нужно добавить контракт урока `Lesson 1` в список ваших контрактов.

Contract Name - Lesson 1  
Address - `0x9e2b9b4f7717D8BA67E60448Cb3DD6D54071ECf7`

Abi:
```js
[{"constant":false,"inputs":[{"name":"_dealer","type":"address"}],"name":"setDealer","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"}],"name":"execute","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"dealer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_dealer","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]
 ```

Теперь вызовем в нем, функцию `Execute`, указав адрес `DAO core`.

![Screenshot 11](/img/Screenshot_11.png)

Если вы всё сделали правильно, на вашем аккаунте появятся 50 AIR.

![Screenshot 12](/img/Screenshot_12.png)
