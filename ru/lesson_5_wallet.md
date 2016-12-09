# Урок 5 в Ethereum Wallet

Иногда, в организации появляется необходимость создать свой собственный токен для внутренних расчетов. Такой подход избавит организацию от влияния волатильности курса Eth на её работу.

В этом уроке мы создадим модуль `Credit` для того, чтобы создать внутреннюю валюту DAO.

Сначала найдем сборщик `Aira BuilderTokenEmission` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderTokenEmission` в список ваших контрактов.
Abi:
```js
[{"constant":false,"inputs":[{"name":"_uri","type":"string"}],"name":"setSecurityCheck","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_beneficiary","type":"address"}],"name":"setBeneficiary","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"beneficiary","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"},{"name":"_client","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"payable":true,"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"securityCheckURI","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"client","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]
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
    module - адрес модуля
    interface - ссылку https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderTokenEmission.json  

Транзакция должна быть отправлена с аккаунта, который указан как `Owner` в вашем DAO. Проверьте наличие модуля в вашем DAO, указав название модуля `Credits` в функции `Get Module`, в контракте `DAO Core` и получив его адрес.

![Screenshot 31](/img/Screenshot_31.png)


## Завершение урока

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 5` для вызова функции `Execute`, передав название созданного токена `Credit` и адрес контракта `DAO core`.
Address Lesson 5 - `0x8315C1752fE404280c7B7DeBa332528ba60C56E5`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_dealer","type":"address"}],"name":"setDealer","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"dealer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_token_name","type":"string"},{"name":"_dao","type":"address"}],"name":"execute","outputs":[],"payable":false,"type":"function"},{"inputs":[{"name":"_dealer","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]
```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 50 Air.
