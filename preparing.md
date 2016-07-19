## Подготовка к работе с сетью Ethereum через консоль

> Данный урок существует только в тестовой сети.

### Описание урока

В данном уроке необходим клиент сети Ethereum, поддерживающий работу в консольном режиме. Рекомендуется использовать клиент сети [geth](https://github.com/ethereum/go-ethereum#automated-development-builds) или [parity](https://ethcore.io/parity.html).

Если вы не знакомы с консолью, мы предлагаем вам воспользоваться официальным GUI клиентом сети Ethereum - Ethereum Wallet. Инструкция по его подготовке - [Ethereum Wallet](https://github.com/airalab/learning-center/blob/master/preparing_wallet.md)

После установки клиента сети необходимо выполнить синхронизацию с **тестовой сетью** и добыть крайне небольшую сумму токенов **ether** для отправки транзакции, требуемой для выполнения данного урока. Сделать это можно одним из следующих способов:

- **Чтобы познакомиться с майнингом поближе.** Cледуя [инструкциям в официальной документации Ethereum](http://www.ethdocs.org/en/latest/mining.html#using-geth) включить майнинг в тестовой сети примерно на 20 - 30 минут.
- **Чтобы познакомитьcя с Airalab поближе.** Подключиться к каналу команды Airalab в Gitter: [Aira team friends](https://gitter.im/airalab/friends) и написать свой адрес в тестовой сети. Кто-нибудь обязательно вам поможет!  

### Проверка умений

Добыв или получив от команды Airalab 0.01 `ether` для первой транзакции в сеть, можно обратиться к контракту `Lesson 0` в тестовой сети, который отправит вам в ответ **5 эфиров**. Этой суммы будет достаточно для выполнения всех 12 уроков.

#### Пример выполнения

```js
var learning_center = eth.contract(Core).at("0x73c5f07b929867951aa2b61f30773dba627d4779");
var Lesson_0 = [{"constant":false,"inputs":[],"name":"ping","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isSended","outputs":[{"name":"","type":"bool"}],"type":"function"}];
var lesson = web3.eth.contract(Lesson_0).at(learning_center.getModule("Lesson_0");
lesson.ping({from:web3.eth.accounts[0], gas:200000});
```
