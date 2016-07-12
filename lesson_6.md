## Урок 6: Создайте внутренний рынок ДАО

> Уровень сложности урока: средний.

**Создаваемые на данном уроке модули ДАО:**

- `DAO market`

**Используемые для взаимодействия в данном уроке модули ДАО:**

- `Aira BuilderMarket` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderMarket.json))
- `DAO market` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Market.json))

### Описание урока

Создайте внутренний рынок ДАО и наполните его предложениями. Для начала необходимо обратиться к сборщику `DAO factory` [BuilderMarket](https://github.com/airalab/core/wiki/API-Reference#buildermarket) c названием `Aira BuilderMarket`.

`Aira BuilderMarket` создаст рынок [Market](https://github.com/airalab/core/wiki/API-Reference#market), на котором возможно выставлять на продажу токены.

Для того, чтобы познакомиться с работой на рынке давайте создадим 2 лота:

- лот на продажу **1 000** токенов `Shareholder token` за **500** `DAO credit`;
- лот на покупку **500** токенов `DAO credit` за **1** ether;


## Проверка умений

> Успешное выполнение урока в официальной сети даст: 100 `air`

Чтобы успешно выполнить данный урок необходимо обратиться к контракту `Lesson 6` для вызова функции `Execute()` указав `адрес рынка`.
> Важно: на вашем рынке должны быть минимум 2 лота.

### Пример выполнения

- [Go-Ethereum](go-ethereum_samples.md#Урок-6)
