# Урок 6 в Ethereum Wallet

В этом уроке мы создадим модуль `Board of Directors`, для создания совета директоров вашей DAO.

Найдем сборщик `Aira BuilderBoardOfDirectors` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderBoardOfDirectors` в реестр наблюдаемых контрактов:
Abi:
```js
[{"constant":false,"inputs":[{"name":"_uri","type":"string"}],"name":"setSecurityCheck","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_beneficiary","type":"address"}],"name":"setBeneficiary","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"beneficiary","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_dao_core","type":"address"},{"name":"_shares","type":"address"},{"name":"_credits","type":"address"},{"name":"_client","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"payable":true,"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"securityCheckURI","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"anonymous":false,"inputs":[{"indexed":true,"name":"client","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]
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
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_index","type":"uint256"}],"name":"proposalDone","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"removeCoreModule","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"setCoreModule","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_value","type":"uint256"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"fund","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_new_voting","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"minVotingShares","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"voting","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"dao_core","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_dao_core","type":"address"},{"name":"_shares","type":"address"},{"name":"_credits","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"new_token","type":"address"}],"name":"VotingTokenChanged","type":"event"}]
```

Добавим этот модуль в реестр модулей вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Подробнее было описано в предыдущих уроках. Выполните самостоятельно.

>interface - ссылку github://airalab/core/cashflow/BoardOfDirectors.sol

Создадим токен для голосования в `Board of Directors`. Для этого используем сбощик `Builder Token emission`, он уже есть в ваших наблюдаемых контрактах. Если нет, добавьте используя `Factory Core`.  
При обращении к сборщику необходимо указать:

    Name - Directors voting token
    Symbol - DVT
    Decimals - 0
    Start count - 30

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

![Screenshot 68](/img/Screenshot_68.png)

Добавьте созданный токен в список наблюдаемых  
Указываем:

наименование - Directors voting token
module - адрес модуля  
Abi:
```js
[{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_owner","type":"address"},{"name":"_spender","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_spender","type":"address"}],"name":"unapprove","outputs":[],"payable":false,"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}]
```

А также добавьте в реестр контрактов вашего DAO.
Указываем:

    наименование - Directors voting token
    module - адрес модуля
    interface - ссылку github://airalab/core/token/TokenEmission.sol

Раздайте `DVT` другим аккаунтам, просто отправив их им.

![Screenshot 69](/img/Screenshot_69.png)

Теперь нужно проголосовать акциями `Shares` за то, чтобы совет директоров был принят. Используем функцию `PollUp` в модуле `Board of Directors`. Предварительно нужно сделать `Approve` для `Shares`, для `Board of Directors`.
Указываем:

    Адрес - Voting token
    Кол-во Shares - 600 (кол-во должно быть больше половины общего кол-ва токенов Shares)

![Screenshot 70](/img/Screenshot_70.png)

Если все сделано правильно, то в поле Voting должен появится адрес созданого контракта голосования.

Создадим предложение на финансирование. Чтобы создать `Proposal`, аккаунт должен входить с состав директоров, те у него должны быть токены для голосования. Используем функцию `Fund` в `Board of Directors`.  
Указываем:

    Target - адрес куда пойдут средства
    Value - кол-во средств в минимальных единицах
    Description - описание предложения
    Start time - время начала голосования в timestamp
    Duration - продолжительность голосования в секундах

![Screenshot 71](/img/Screenshot_71.png)

Переводим средства из `Ether Leger` под управление контракта совета директоров. Просто переводим их туда.

![Screenshot 72](/img/Screenshot_72.png)

Голосуем за принятие текущего вопроса, Перед голосованием нужно апрувить токены для адреса контракта `Voting`, для каждого аккаунта голосующего.

Для голосования нужно вызвать функцию `Vote` контракта `Voting` передав количество токенов которыми голосуем.
Количество токенов которыми проголосовали должно быть больше половины от общего кол-ва токенов. Как только будет достигнуто нужное количество `DVT`, средства будут преведены на `Target address`.

Abi `Voting`:
```js
[{"constant":true,"inputs":[],"name":"current_proposal","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_count","type":"uint256"}],"name":"vote","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"},{"name":"","type":"address"}],"name":"voter_value","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"description","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"end_time","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"uint256"},{"name":"_count","type":"uint256"}],"name":"refund","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_description","type":"string"},{"name":"_start_time","type":"uint256"},{"name":"_duration_sec","type":"uint256"}],"name":"proposal","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"start_time","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"proposal_target","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"uint256"}],"name":"total_value","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"voting_token","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"receiver","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_voting_token","type":"address"},{"name":"_receiver","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"index","type":"uint256"}],"name":"ProposalDone","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"index","type":"uint256"}],"name":"ProposalNew","type":"event"}]
```

## Завершение урока

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 6` для вызова функции `Execute`, передав адрес контракта `Board of Directors`.
Address Lesson 6 - `0xFD66Bf3E903d4fB69B18ff0EF45Fb5aAe02Eb6b6`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_dealer","type":"address"}],"name":"setDealer","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_bod","type":"address"}],"name":"execute","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"dealer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_dealer","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]
```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 200 Air.
