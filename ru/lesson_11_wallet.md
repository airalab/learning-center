# Урок 11 в Ethereum Wallet

В этом уроке мы создадим модуль `Board of Directors`, для создания совета директоров вашей DAO.

Найдем сборщик `Aira BuilderBoardOfDirectors` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderBoardOfDirectors` в реестр наблюдаемых контрактов:
Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_dao_core","type":"address"},{"name":"_shares","type":"address"},{"name":"_credits","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```

Создадим модуль `Board of Directors`, используя функцию `Create` в сборщике `Aira BuilderBoardOfDirectors`.

При обращении к сборщику необходимо указать:

    Адрес `DAO Core`
    Адрес `Shares`
    Адрес `Ether Funds`

![Screenshot 67](/img/Screenshot_67.png)

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

Добавим этот модуль в список наблюдаемых контрактов. Адрес найдем в `Latest Events` контракта `Aira BuilderBoardOfDirectors`.  
Abi:
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_index","type":"uint256"}],"name":"proposalDone","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"removeCoreModule","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"setCoreModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_value","type":"uint256"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"fund","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_new_voting","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"voting","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"dao_core","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_dao_core","type":"address"},{"name":"_shares","type":"address"},{"name":"_credits","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"new_token","type":"address"}],"name":"VotingTokenChanged","type":"event"}]

```

Добавим этот модуль в реестр модулей вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Подробнее было описано в предыдущих уроках. Выполните самостоятельно.

>Abi - github://airalab/core/cashflow/BoardOfDirectors.sol

Создадим токен для голосования в `Board of Directors`. Для этого используем сбощик `Builder Token emission`, он уже есть в ваших наблюдаемых контрактах. Если нет, добавьте используя `Factory Core`.  
При обращении к сборщику необходимо указать:

    Name - Directors voting token
    Symbol - DVT
    Decimals - 0
    Start count - 30

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

![Screenshot 68](/img/Screenshot_68.png)

Добавьте созданный токен в список наблюдаемых, а также в реестр контрактов вашего DAO.
>Abi: github://airalab/core/token/TokenEmission.sol

Раздайте `DVT` другим аккаунтам, просто отправив их им.

![Screenshot 69](/img/Screenshot_69.png)

Теперь нужно проголосовать акциями `Shares` за то, чтобы совет директоров был принят. Используем функцию `PollUp` в модуле `Board of Directors`. Предварительно нужно сделать `Approve` для `Shares`, для `Board of Directors`.
Указываем:

    Адрес - Voting token
    Кол-во Shares - 1

![Screenshot 70](/img/Screenshot_70.png)

Создадим предложение на финансирование. Чтобы создать `Proposal`, аккаунт должен входить с состав директоров, те у него должны быть токены для голосования. Используем функцию `Fund` в `Board of Directors`.  
Указываем:

    Target - адрес куда пойдут средства
    Value - кол-во средств в минимальных единицах
    Description - описание предложения
    Start time - время начала голосования в timestamp
    Duration - продолжительность голосования в секундах

![Screenshot 71](/img/Screenshot_71.png)

Переводим средства под управление контракта совета директоров. Просто переводим их туда.

![Screenshot 72](/img/Screenshot_72.png)



## Завершение урока (TO DO)
