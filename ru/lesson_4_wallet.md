# Урок 4 в Ethereum Wallet

В этом уроке мы создадим контракт `ShareSale` для продажи акций DAO за Eth и совершим покупку\продажу.

Сначала найдем сборщик `Aira BuilderShareSale` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderShareSale` в список ваших контрактов.
Abi:
```js
[{"constant":false,"inputs":[{"name":"_uri","type":"string"}],"name":"setSecurityCheck","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_beneficiary","type":"address"}],"name":"setBeneficiary","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"},{"name":"_client","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"payable":true,"type":"function"},{"constant":true,"inputs":[],"name":"beneficiary","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"securityCheckURI","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"client","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]
```  
Создадим контракт `ShareSale`, используя функцию `Create` в контракте `Aira BuilderShareSale`.

При обращении к сборщику необходимо указать:

    адрес получателя средств в эфирах
    адрес контракта Ether funds
    адрес контракта Shareholder Token
    стоимость одной акции в Wei.

> для перевода Wei to Eth и обратно используйте http://ether.fund/tool/converter

![Screenshot 24](/img/Screenshot_24.png)

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

Адрес созданного `ShareSale` вы найдете в `Latest Events` сборщика `Aira BuilderShareSale`.

Добавим контракт `ShareSale` в список наблюдаемых контрактов.  Адрес у вас есть.
Abi:
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"closed","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"etherFund","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_price_wei","type":"uint256"}],"name":"setPrice","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"priceWei","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"target","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"type":"constructor"},{"payable":false,"type":"fallback"}]
```  

Переведем некоторое кол-во `Shares` на контракт `ShareSale`.

![Screenshot 25](/img/Screenshot_25.png)

Акции готовы к продаже

![Screenshot 26](/img/Screenshot_26.png)

Чтобы купить акции, отправим на контракт `ShareSale` Eth из расчета 100*0.01=1 Eth c другого аккаунта.

![Screenshot 27](/img/Screenshot_27.png)

Если вы всё сделали правильно, акции перейдут на нужный аккаунт. А Eth зачислятся на аккаунт, который продал акции в `Ether Funds`.

![Screenshot 28](/img/Screenshot_28.png)

## Завершение урока

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 4` для вызова функции `Execute`, указав адрес контракта `ShareSale`.
Address Lesson 4 - `0x964cF4d6210c45318756A3c5A876Fd50949F4609`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_dealer","type":"address"}],"name":"setDealer","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_shareSale","type":"address"}],"name":"execute","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"dealer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_dealer","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]
```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 100 Air.
