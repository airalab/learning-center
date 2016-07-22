## Урок 4: Привлечение финансирования

> Уровень сложности урока: средний.

**Создаваемые на данном уроке модули ДАО:**

- `ShareSale`

**Используемые для взаимодействия в данном уроке модули ДАО:**

- `Aira BuilderShareSale` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderShareSale.json))
- `Shareholder token` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEmission.json))
- `ShareSale` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/ShareSale.json))
- `Ether funds` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEther.json))

### Описание урока

Создатель ДАО на данном этапе может лично эмиссировать дополнительные акции на свой счёт. В данном уроке рассматривается эмиссия новых токенов акций и их продажа инвестору за эфиры. Чтобы выполнить данный процесс безопасно для обеих сторон можно обратиться к `DAO factory` и найти сборщик [BuilderShareSale](https://github.com/airalab/core/wiki/API-Reference#buildersharesale) с названием `Aira BuilderShareSale`. 

**При обращении к сборщику необходимо указать:**

- адрес получателя средств в эфирах
- адрес контракта `Ether funds`
- адрес контракта `Shareholder token`
- стоимость одной акции в `Wei`.

**После создания контракта `ShareSale` необходимо:**

- Со счета продавца в контракте `Shareholder token` отправить на адрес контракта [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale) количество акций предлагаемых для продажи по контракту.

- С аккаунта покупателя отправить на адрес контракта [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale) количество эфиров, требуемое для сделки: т.е. `количество акций * стоимость одной акции`.
- Проверить поступление средств на счёт получателя в контракте `Ether funds`.
- Проверить поступление акций на счёт покупателя в контракте `Shareholder token`.

> Важно: акции поступят на баланс адреса, который отправил на контракт [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale) не забывайте это.

### Проверка умений

> Успешное выполнение урока в официальной сети даст: 100 `air`

Чтобы успешно выполнить данный урок необходимо выполнить продажу токенов акций за эфиры, после чего обратиться к контракту `Lesson 4` передав адрес контракта `ShareSale`.
