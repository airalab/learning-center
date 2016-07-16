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

Иногда возникают ситуации, когда нужно получить подтверждение от агента(аккаунта) о том, что он согласен стать акционером. Для этого можно использовать специальный контракт `Shareholder`. Чтобы его создать, обратимся в контракт `Factory Core`, в раздел `Get module`. Ищем адрес `Aira BuilderShareholder`.

![Screenshot 15](/img/Screenshot_15.png)

Адрес есть - `0x6bB6479624a59E4A87A9B37211F63089385Ce13f`  
Теперь создадим контракт. Для этого добавим контракт сборщика `Aira BuilderShareholder` в список ваших контрактов.

![Screenshot 16](/img/Screenshot_16.png)

Abi:  
```js
 [{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_shares","type":"address"},{"name":"_count","type":"uint256"},{"name":"_recipient","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}] ```  

Создадим модуль `Shareholder`. Для этого испольуем функцию `Create` в сбощике `Aira BuilderShareholder`. Указываем адрес акций, кол-во, которое мы хотим отдать и адрес будущего акционера.

![Screenshot 17](/img/Screenshot_17.png)

Когда транзакция будет подтверждена сетью, найдем адрес созданного контракта в `Latest Events` сборщика `Aira BuilderShareholder`.

![Screenshot 18](/img/Screenshot_18.png)

Теперь нам нужно разрешить, созданному контракту `Shareholder`, распоряжаться акциями. Для этого добавим контракт акций в список наблюдаемых контрактов:

Address - адрес ваших `Shares`  
Abi:
```js
[{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}]
```
Далее, используем функцию `Approve` в контракте `Shares`, указав адрес контракта `Shareholder` и кол-во акций, которыми он сможет распоряжаться. Также, убедитесь, что аккаунт с которого вы инициируете транзакцию совпадает с адресом, являющемся `Owner` для контракта `Shares`.

![Screenshot 19](/img/Screenshot_19.png)

Добавим контракт `Shareholder` в список наблюдаемых контрактов:

Abi:
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"count","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[],"name":"sign","outputs":[],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"complete","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"recipient","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_shares","type":"address"},{"name":"_count","type":"uint256"},{"name":"_recipient","type":"address"}],"type":"constructor"}]
```

Мы готовы к подписанию контракта акционера -`Shareholder`. Используем функцию `Sign`, отправив транзакцию с аккаунта, для которого был создан контракт.

![Screenshot 20](/img/Screenshot_20.png)

Если вы всё сделали правильно, акции попадут на нужный аккаунт.

![Screenshot 21](/img/Screenshot_21.png)

## Завершение урока

Для того, чтобы завершить урок и получить AIR, необходимо   
сделать `Approve` 1 акции на адрес `Airalab learning center`.  
Address `Airalab learning center` -  ё
`0xd5ec7544753fcf759b4dd37210dab113fce76814`

Далее нужно обратиться к функции `Execute` второго урока.    
Address 2-го урока - `0x62808bc94e156f45a9f8e7e41ba969acfc467bed`
Abi:
```js
[{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"},{"name":"_shares_name","type":"string"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"airalab_learning_center","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"},{"name":"_airalab_learning_center","type":"address"}],"type":"constructor"}]
```
Выполните самостоятельно.
