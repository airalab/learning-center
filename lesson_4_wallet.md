# Урок 4 в Ethereum Wallet

В этом уроке мы создадим контракт `ShareSale` для продажи акций DAO за Eth и совершим покупку\продажу.

Сначала найдем сборщик `Aira BuilderShareSale` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderShareSale` в список ваших контрактов.
Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  
Создадим контракт `ShareSale`, используя функцию `Create` в контракте `Aira BuilderShareSale`.

При обращении к сборщику необходимо указать:

    адрес получателя средств в эфирах
    адрес контракта Ether funds
    адрес контракта Shareholder token
    стоимость одной акции в Wei.

> для перевода Wei to Eth и обратно используйте http://ether.fund/tool/converter

![Screenshot 24](/img/Screenshot_24.png)

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

Адрес созданного `ShareSale` вы найдете в `Latest Events` сборщика `Aira BuilderShareSale`.

Добавим контракт `ShareSale` в список наблюдаемых контрактов.  Адрес у вас есть.
Abi:
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"closed","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"etherFund","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_price_wei","type":"uint256"}],"name":"setPrice","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"priceWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"target","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"type":"constructor"}]

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
Address Lesson 4 - `0x892bec692f4c7121b396f70f7a3b1b88e6dc3000`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_shareSale","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}]

```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 100 Air.
