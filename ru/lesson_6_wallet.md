# Урок 6 в Ethereum Wallet

В предыдущих уроках мы создали `Shares`,`Credits`,`EthToken`. Это базовые ценности. Для того чтобы организовать обмен этих ценностей существует модуль `Market`. В этом уроке мы создадим его и попробуем им воспользоваться.

Сначала найдем сборщик `Aira BuilderMarket` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderMarket` в список ваших контрактов.
Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  
Создадим модуль `Market`, используя функцию `Create` в контракте `Aira BuilderMarket`.

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

Адрес созданного `Market` вы найдете в `Latest Events` сборщика `Aira BuilderMarket`.

Добавьте этот модуль в список наблюдаемых. Адрес у вас есть.  
Abi:  
```js
[{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"remove","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"first","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_enable","type":"bool"}],"name":"setRegulator","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_seller","type":"address"},{"name":"_sale","type":"address"},{"name":"_buy","type":"address"},{"name":"_quantity_sale","type":"uint256"},{"name":"_quantity_buy","type":"uint256"}],"name":"append","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_lot","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"size","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"next","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"regulatorEnabled","outputs":[{"name":"","type":"bool"}],"type":"function"}]

```
![Screenshot 32](/img/Screenshot_32.png)

Мы готовы добавить этот модуль в реестр модулей вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Указываем:

    наименование - Market
    module - адрес модуля
    interface - ссылку github.com/airalab/core/blob/master/abi/modules/Market.json  

Транзакция должна быть отправлена с аккаунта, который указан как `Owner` в вашем DAO. Проверьте наличие модуля в вашем DAO, указав название модуля `Market` в функции `Get Module`, в контракте `DAO Core` и получив его адрес.

![Screenshot 33](/img/Screenshot_33.png)

![Screenshot 34](/img/Screenshot_34.png)

Теперь выставим лоты. Для этого вызовем функцию `Append` в модуле `Market`.

В функию необходимо передать:

    seller address - адрес продавца
    sale address - адрес ценности(токена) для продажи
    buy address - адрес ценности(токена) которую хотим получить в замен
    quantity_sale - кол-во на продажу
    quantity_sale - кол-во на покупку

Выставим лот на продажу 1 000 токенов `Shareholder token` за 500 `DAO credit`.
> Обращаю внимание на то, что при указании кол-ва нужно учитывать кол-во знаков после запятой. Т.е. если, например у `Credits` их 8, и вы хотите получить 500 Cr, нужно указывать 500 00000000.

Транзакцию отправляем с аккаунта, у которого есть продаваемый токен.

![Screenshot 35](/img/Screenshot_35.png)

`Market` сам не производит сделки, он представляет из себя реестр контрактов на покупку/продажу, т.е. он создает автономный контракт и делает у себя запись его адреса. Убедимся что лот был создан. Для этого кликнем по контракту `Market`, в разделе `Read from Contract`, `First`.

![Screenshot 40](/img/Screenshot_40.png)

Как работать с лотами мы рассмотрим в следующих уроках, а пока добавим еще один лот на покупку 500 токенов `DAO credit` за 1 Eth.

![Screenshot 41](/img/Screenshot_41.png)

> Обращаю внимание на то, что при указании кол-ва нужно учитывать кол-во знаков после запятой. Т.е. если, например у `Credits` их 8, и вы хотите получить 500 Cr, нужно указывать 500 00000000, тоже самое с ETH, указываем в Wei.

Проверим создание лота. Для этого возьмем адрес лота из раздела `First` и подставим в раздел `Next`. Если там появится адрес, лот был содзан.

![Screenshot 42](/img/Screenshot_42.png)

## Завершение урока

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 6` для вызова функции `Execute`, передав адрес созданного контракта `Market`.
Address Lesson 6 - `0xd7A0D1391C504C5E9649bc7482B1917eC9E6eD37`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_market","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 100 Air.
