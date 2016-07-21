# Урок 7 в Ethereum Wallet

В этом уроке мы создадим модуль `DAO MarketRegulator`. Когда он начнет работать, добавление на рынок лота становится возможно только при выполнении условий, установленных регулятором. На данный момент, регулятор, при включении позволяет добавлять на рынок лоты, только с теми токенами, запись о которых есть в `DAO core`. Также, `DAO MarketRegulator` создает лоты только через `DAO Credits`, т.е все ценности(токены) можно будет покупать\продавать только за `DAO Credits`.

Сначала найдем сборщик `Aira BuilderDAOMarketRegulator` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderDAOMarketRegulator` в список ваших контрактов.
Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_shares","type":"address"},{"name":"_core","type":"address"},{"name":"_market","type":"address"},{"name":"_dao_credits","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  
Создадим модуль `DAO MarketRegulator`, используя функцию `Create` в контракте `Aira BuilderDAOMarketRegulator`.

При обращении к сборщику необходимо указать:

    адрес модуля `Shares`
    адрес `DAO Core`
    адрес модуля `Market`
    адрес модуля `Credits`

Не забудьте указать правильный аккаунт и отправить немного Eth сборщику, его работа стоит 0.01 Eth.

![Screenshot 43](/img/Screenshot_43.png)

Адрес созданного `DAO MarketRegulator` вы найдете в `Latest Events` сборщика `Aira BuilderDAOMarketRegulator`.

Добавьте этот модуль в список наблюдаемых. Адрес у вас есть.  
Abi:  
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_sale","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"sale","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"notifyDeal","outputs":[],"type":"function"},{"constant":false,"inputs":[],"name":"sign","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"market","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_asset","type":"address"}],"name":"currentRuleOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buy","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"buy","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_rule","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"dao_core","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_shares","type":"address"},{"name":"_core","type":"address"},{"name":"_market","type":"address"},{"name":"_dao_credits","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"lot","type":"address"}],"name":"NewLot","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_value","type":"uint256"}],"name":"Emission","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"agent","type":"address"}],"name":"MarketAgentSign","type":"event"}]

```

Мы готовы добавить этот модуль в реестр модулей вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Указываем:

    наименование - MarketRegulator
    адрес модуля
    Abi - github.com/airalab/core/blob/master/abi/modules/DAOMarketRegulator.json  

Транзакция должна быть отправлена с аккаунта, который указан как `Owner` в вашем DAO. Проверьте наличие модуля в вашем DAO, указав название модуля `Credits` в функции `Get Module`, в контракте `DAO Core` и получив его адрес.

![Screenshot 44](/img/Screenshot_44.png)

![Screenshot 45](/img/Screenshot_45.png)

Теперь переведем модуль `Market` в режим функционирования с регулятором. Для этого используем функцию `Set regulator` в модуле `Market`. Транзакция должна быть отправлена с аккаунта, который является `Owner` для `Market`.

![Screenshot 46](/img/Screenshot_46.png)

Проверим, переключился ли `Market` в режим с регулятором.

![Screenshot 47](/img/Screenshot_47.png)

Далле, нам нужно передать управление рынком регулятору, используем функцию `Delegate` в модуле `Market`. Указываем адрес регулятора. Транзакция должна быть отправлена с аккаунта, который является `Owner` для `Market`.

![Screenshot 48](/img/Screenshot_48.png)

Убедимся, что `Market` перешел под управление регулятора.

![Screenshot 49](/img/Screenshot_49.png)

>Обращаю внимание на то, что после передачи `Market` регулятору, лоты будут выставляться только через `DAO MarketRegulator`.

Попробуем добавить лот на рынок, в котором будут участвовать токены не добавленные в `DAO Core`. `EthToken` такой токен, мы его еще не добавляли в `DAO Core` или можете создать свой с помощью `Aira BuilderTokenEmission`.

![Screenshot 50](/img/Screenshot_50.png)

![Screenshot 51](/img/Screenshot_51.png)

Как видим, контракт не может исполнится.

Если мы попробуем продать, например `Shares`, которые есть в реестре `DAO Core`, то лот выставится.

![Screenshot 52](/img/Screenshot_52.png)

## Завершение урока (TO DO)
