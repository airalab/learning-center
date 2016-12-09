# Урок 7 в Ethereum Wallet

В этом уроке мы создадим модуль `Crowdsale`, для привлечения инвестиций.

Найдем сборщик `Aira BuilderCrowdSale` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderCrowdSale` в реестр наблюдаемых контрактов:
Abi:
```js
[{"constant":false,"inputs":[{"name":"_uri","type":"string"}],"name":"setSecurityCheck","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_beneficiary","type":"address"}],"name":"setBeneficiary","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"beneficiary","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_credits","type":"address"},{"name":"_sale","type":"address"},{"name":"_start_time_sec","type":"uint256"},{"name":"_duration_sec","type":"uint256"},{"name":"_start_price","type":"uint256"},{"name":"_step","type":"uint256"},{"name":"_period_sec","type":"uint256"},{"name":"_min_value","type":"uint256"},{"name":"_end_value","type":"uint256"},{"name":"_client","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"payable":true,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"securityCheckURI","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"client","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]
```

Создадим модуль `CrowdSale`, используя функцию `Create` в сборщике `Aira BuilderCrowdSale`.

При обращении к сборщику необходимо указать:

    Target - Адрес получателя финансирования
    Credits - Адрес токена для инвестирования
    Sale - Адрес токена для продажи
    Start time - начало краудсейла в unixtime
    Duration - продолжительность краудсейла в секундах
    Start Price - начальная цена в минимальных единицах
    Step - шаг увеличения цены в процентах
    Period - период шага увеличения цены в секундах
    Min_value - минимальное кол-во инвестиций для успешного завершения краудсейла
    End_value - максимальное кол-во инвестиций для успешного завершения краудсейла

Как видим, модуль `Crowdsale` имеет различные настройки для гибкости проведения краудсейла. Мы будем использовать его в протейшем виде.

![Screenshot 73](/img/Screenshot_73.png)

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

Добавим этот модуль в список наблюдаемых контрактов. Адрес найдем в `Latest Events` контракта `Aira BuilderCrowdSale`.  
Abi:
```js
[{"constant":true,"inputs":[],"name":"currentPeriod","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"end_time","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"endValue","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"is_alive","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"creditsOf","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"is_fail","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"deal","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"refund","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"sale","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"start_time","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"priceStep","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"minValue","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"currentPrice","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"stepPeriod","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"target","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_target","type":"address"},{"name":"_credits","type":"address"},{"name":"_sale","type":"address"},{"name":"_start_time_sec","type":"uint256"},{"name":"_duration_sec","type":"uint256"},{"name":"_start_price","type":"uint256"},{"name":"_step","type":"uint256"},{"name":"_period_sec","type":"uint256"},{"name":"_min_value","type":"uint256"},{"name":"_end_value","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[],"name":"Failed","type":"event"},{"anonymous":false,"inputs":[],"name":"Start","type":"event"},{"anonymous":false,"inputs":[],"name":"Finish","type":"event"}]
```

Теперь переведем несколько токенов для продажи, контракту `Crowdsale`. Имейте ввиду то, что цены при создании контракта краудсейла указываются в минимальных единицах.

![Screenshot 74](/img/Screenshot_74.png)

Далее, необходимо сделать `Approve` для контракта `Crowdsale` с аккаунта, который будет участвовать в финансировании, в `Ether Leger`.

![Screenshot 75](/img/Screenshot_75.png)

Последнее, что нужно сделать, это вызвать функцию `Deal` в контракте `Crowdsale`. Если вы все сделали правильно, то произойдет продажа `Credits` за `ETH`.

![Screenshot 76](/img/Screenshot_76.png)

## Завершение урока

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 7` для вызова функции `Execute`, передав адрес контракта `Crowdsale`.
Address Lesson 7 - `0x0A6e7705680AB6145701be0F4D8E6643bBa20AFF`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_dealer","type":"address"}],"name":"setDealer","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_crowdSale","type":"address"}],"name":"execute","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"dealer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_dealer","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]
```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 200 Air.
