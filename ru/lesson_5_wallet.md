# Урок 5 в Ethereum Wallet

Иногда, в организации появляется необходимость создать свой собственный токен для внутренних расчетов. Такой подход избавит организацию от влияния волатильности курса Eth на её работу.

В этом уроке мы создадим модуль `Credit` для того, чтобы создать внутреннюю валюту DAO.

Сначала найдем сборщик `Aira BuilderTokenEmission` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderTokenEmission` в список ваших контрактов.
Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  
Создадим модуль `TestCredits`, используя функцию `Create` в контракте `Aira BuilderTokenEmission`.

При обращении к сборщику необходимо указать:

    наименование токена
    символ токена
    кол-во знаков после запятой
    размер первоначальной эмиссии

> Обращаю внимание на то, что при указании эмиссии нужно учитывать кол-во знаков после запятой. Т.е. если вы, например указали 8, и хотите проэмиссировать 1000 Cr, нужно эмиссировать 1000 00000000.

![Screenshot 29](/img/Screenshot_29.png)

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

Адрес созданного `Credits` вы найдете в `Latest Events` сборщика `Aira BuilderTokenEmission`.

Добавьте этот токен в список наблюдаемых.

![Screenshot 30](/img/Screenshot_30.png)

Мы готовы добавить этот модуль в реестр модулей вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Указываем:

    наименование - TestCredits
    адрес модуля
    Abi - github.com/airalab/core/blob/master/abi/modules/TokenEmission.json  

Транзакция должна быть отправлена с аккаунта, который указан как `Owner` в вашем DAO. Проверьте наличие модуля в вашем DAO, указав название модуля `Credits` в функции `Get Module`, в контракте `DAO Core` и получив его адрес.

![Screenshot 31](/img/Screenshot_31.png)


## Завершение урока (пока не работает)

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 5` для вызова функции `Execute`, передав название созданного токена `Credit` и адрес контракта `DAO core`.
Address Lesson 5 - `0x580e87d0897a515bf4e61e575d8bdefb47d46011`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_token_name","type":"string"},{"name":"_dao","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 50 Air.
