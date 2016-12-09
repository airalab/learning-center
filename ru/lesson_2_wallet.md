# Урок 2 в Ethereum Wallet

В этом уроке мы распределим акции среди участников DAO.

После выполнения первого урока, все акции находятся у аккаунта, который создавал DAO.

Распределить акции можно двумя способами:

1. напрямую отправить другому пользователю сети токены акций;
2. cоздать контракт `Shareholder`, обратившись к билдеру `Aira BuilderShareholder`, который снимет со счёта `founder`, указанное количество токенов акций при вызове функции `sign()` адресом, который был указан при создании данного контракта как получателя `recipient`.

## Вариант 1

Нет ничего проще, чем просто отправить акции на другой аккаунт. Для этого нажимаем на аккаунт, держатель акции, нажимаем кнопку `Send` напротив токена акции:

![Screenshot 13](/img/Screenshot_13.png)

Указываем кол-во и адрес, еще раз нажимаем кнопку `Send`

![Screenshot 14](/img/Screenshot_14.png)

Акции отправлены.

## Вариант 2

Иногда возникают ситуации, когда нужно получить подтверждение от агента (аккаунта) о том, что он согласен стать акционером. Для этого можно использовать специальный контракт `Shareholder`. Чтобы его создать, обратимся в контракт `Factory Core`, в раздел `Get module`. Ищем адрес `Aira BuilderShareholder`.

![Screenshot 15](/img/Screenshot_15.png)

Адрес есть - `0xA6e9ef2FF0663F0ec47Ec4024500729905943bEf`  
Теперь создадим контракт. Для этого добавим контракт сборщика `Aira BuilderShareholder` в список ваших контрактов.

![Screenshot 16](/img/Screenshot_16.png)

Abi:  
```js
[{"constant":false,"inputs":[{"name":"_uri","type":"string"}],"name":"setSecurityCheck","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_beneficiary","type":"address"}],"name":"setBeneficiary","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"beneficiary","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"securityCheckURI","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_desc","type":"string"},{"name":"_shares","type":"address"},{"name":"_count","type":"uint256"},{"name":"_recipient","type":"address"},{"name":"_client","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"payable":true,"type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"client","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]
```  

Создадим модуль `Shareholder`. Для этого используем функцию `Create` в сборщике `Aira BuilderShareholder`. Указываем адрес акций, кол-во, которое мы хотим отдать и адрес будущего акционера.

![Screenshot 17](/img/Screenshot_17.png)

Когда транзакция будет подтверждена сетью, найдем адрес созданного контракта в `Latest Events` сборщика `Aira BuilderShareholder`.

![Screenshot 18](/img/Screenshot_18.png)

Теперь нам нужно разрешить созданному контракту `Shareholder` распоряжаться акциями. Для этого добавим контракт акций `Shares`, в список наблюдаемых контрактов:

Address − адрес ваших `Shares`  
Abi:
```js
[{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"},{"name":"_spender","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"}],"name":"unapprove","outputs":[],"payable":false,"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}]
```
Далее, используем функцию `Approve` в контракте `Shares`, указав адрес контракта `Shareholder` и кол-во акций, которыми он сможет распоряжаться. Также, убедитесь, что аккаунт с которого вы инициируете транзакцию совпадает с адресом, являющемся `Owner` для контракта `Shares`.

![Screenshot 19](/img/Screenshot_19.png)

Добавим контракт `Shareholder` в список наблюдаемых контрактов:

Abi:
```js
[{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"signer","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"accept","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"beneficiary","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"value","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"close","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"closed","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"hardOffer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"token","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_description","type":"string"},{"name":"_token","type":"address"},{"name":"_value","type":"uint256"},{"name":"_beneficiary","type":"address"}],"type":"constructor"}]
```

Мы готовы к подписанию контракта акционера − `Shareholder`. Используем функцию `Accept`, отправив транзакцию с аккаунта, для которого был создан контракт.

![Screenshot 20](/img/Screenshot_20.png)

Если вы всё сделали правильно, акции попадут на нужный аккаунт.

![Screenshot 21](/img/Screenshot_21.png)

## Завершение урока

Для того чтобы завершить урок и получить AIR, необходимо   
сделать `Approve` 1 акции на адрес `2-го урока`.  
Address `2-го урока` −  
`0x7f7EE513F78fe20A94e420FCDFb8164769920194`

Далее нужно обратиться к функции `Execute` второго урока, указав адрес вашего DAO и название токена акций.    
Address 2-го урока − `0x7f7EE513F78fe20A94e420FCDFb8164769920194`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_dealer","type":"address"}],"name":"setDealer","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"},{"name":"_shares_name","type":"string"}],"name":"execute","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"dealer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_dealer","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]
```
Выполните самостоятельно.
