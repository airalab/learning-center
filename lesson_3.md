## Урок 3: Используйте общий контракт для хранения эфиров.

> Уровень сложности урока: низкий.

**Создаваемые на данном уроке модули ДАО:**

- `Ether funds`

**Используемые для взаимодействия в данном уроке модули ДАО:**

- `Aira BuilderTokenEther` ([abi](https://github.com/airalab/core/blob/master/abi/builder/BuilderTokenEther.json)
- `DAO core` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Core.json))
- `Ether funds` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEther.json))

### Описание урока

Первый шаг к объединению средств организации от акционеров можно выделить в использование общего контракта, на который акционеры передадут средства без учета соотношения вложений к общей сумме средств в эфирах на общем контракте хранения эфиров. Это означает, что все средства, которые будут переведены на контракт будут доступны для использования и вывода **только** владельцу аккаунта, с которого средства были отправлены на контракт.

### Проверка умений

> Успешное выполнение урока в официальной сети даст: 50 `air`

**Чтобы успешно выполнить данный урок необходимо:**

- обратиться к контракту [Aira BuilderTokenEther](https://github.com/airalab/core/wiki/API-Reference#buildertokenether) в DAO factory с названием `Aira BuilderTokenEther` для создания контракта, который будет хранить эфиры.
- перевести **0,1** эфир на свой счет в контракте [TokenEther](https://github.com/airalab/core/wiki/API-Reference#tokenether), созданном вами ранее.
- обратиться к контракту `Lesson 3` для вызова функции `Execute()` указав `адрес контракта для хранения эфиров` и имея **0,1** эфир на счету своего аккаунта на контракте.

#### Пример выполнения

- [Go-Ethereum](go-ethereum_samples.md#Урок-3)
