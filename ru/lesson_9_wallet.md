# Урок 9 в Ethereum Wallet

В этом уроке мы создадим модуль `MarketRuleConstant`. Этот модуль даст возможность задать правило эмисии для `DAO Credits`.

Сначала найдем сборщик `Aira BuilderMarketRuleConstant` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderMarketRuleConstant` в список ваших контрактов.
Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_emission","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```
Создадим модуль `MarketRuleConstant`, используя функцию `Create` в контракте `Aira BuilderMarketRuleConstant`.

При обращении к сборщику необходимо указать:

    Emission - кол-во эмиссируемых токенов при каждой сделке.

Не забудьте указать правильный аккаунт и отправить немного Eth сборщику, его работа стоит 0.01 Eth.

![Screenshot 56](/img/Screenshot_56.png)

Адрес созданного `MarketRuleConstant` вы найдете в `Latest Events` сборщика `Aira BuilderMarketRuleConstant`.

Мы готовы добавить этот модуль в реестр модулей вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Указываем:

    наименование - MarketRuleConstant
    module - адрес модуля
    interface - ссылку github://airalab/core/market/MarketRuleConstant.sol

Транзакция должна быть отправлена с аккаунта, который указан как `Owner` в вашем DAO. Проверьте наличие модуля в вашем DAO, указав название модуля `MarketRuleConstant` в функции `Get Module`, в контракте `DAO Core` и получив его адрес.

![Screenshot 57](/img/Screenshot_57.png)

![Screenshot 58](/img/Screenshot_58.png)

Для того, чтобы правило заработало, нужно за него проголосовать. Для этого, сначала сделаем `Approve` акций `Shares` для `Market regulator`. Найдем адрес `Market regulator` в `DAO Core` либо просто возьмем адрес из наблюдаемого контракта `Market regulator`.

![Screenshot 59](/img/Screenshot_59.png)

Кликнем на модуль `Shares` и выберем функцию `Approve`.
Указываем:

    адрес Market regulator
    кол-во акций - 1

![Screenshot 60](/img/Screenshot_60.png)

Транзакция должна быть отправлена с аккаунта у которого есть `Shares`.  
Далее, проголосуем за правило в модуле `Market regulator`. Используем функцию `Poll Up`

Указываем:

    адрес ценности которая будет эмиссироваться - `Credits`
    адрес правила
    кол-во акций для голосования - 1

![Screenshot 61](/img/Screenshot_61.png)

Последнее, что нам нужно сделать, передать `Credits` под управление `Market regulator`. Для этого вызовем функцию `Delegate` в модуле `Credits`, указав адрес `Market Regulator`. Транзакция должна быть отправлена с аккаунта, который указан как `Owner` в модуле `Credits`.

![Screenshot 62](/img/Screenshot_62.png)

## Завершение урока

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 9` для вызова функции `Execute`, передав адрес контракта `Market regulator`, адрес `Credits` и адрес созданного контракта `Market rule constant`.
Address Lesson 9 - `0x3C43cE2B6469243Aa5F5F44053CFc689c6AcbDAd`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_regulator","type":"address"},{"name":"_asset","type":"address"},{"name":"_rule","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 200 Air.
