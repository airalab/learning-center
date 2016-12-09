## Подготовка к работе с сетью Ethereum через консоль

> Данный урок существует только в тестовой сети.

### Описание урока

В данном уроке необходим клиент сети Ethereum, поддерживающий работу в консольном режиме. Рекомендуется использовать клиент сети [geth](https://github.com/ethereum/go-ethereum#automated-development-builds) или [parity](https://ethcore.io/parity.html).

Если вы не знакомы с консолью, мы предлагаем вам воспользоваться официальным GUI клиентом сети Ethereum - Ethereum Wallet. Инструкция по его подготовке - [Ethereum Wallet](https://ensrationis.gitbooks.io/learning-center-airalab/content/ru/preparing_wallet.html)

После установки клиента сети необходимо выполнить синхронизацию с **тестовой сетью** и добыть крайне небольшую сумму токенов **ether** для отправки транзакции, требуемой для выполнения данного урока. Сделать это можно одним из следующих способов:

- **Чтобы познакомиться с майнингом поближе.** Cледуя [инструкциям в официальной документации Ethereum](http://www.ethdocs.org/en/latest/mining.html#using-geth) включить майнинг в тестовой сети примерно на 20 - 30 минут.
- **Чтобы познакомитьcя с Airalab поближе.** Подключиться к каналу команды Airalab в Gitter: [Aira team friends](https://gitter.im/airalab/friends) и написать свой адрес в тестовой сети. Кто-нибудь обязательно вам поможет!  

### Проверка умений

Добыв или получив от команды Airalab 0.01 `ether` для первой транзакции в сеть, можно обратиться к контракту `Lesson 0` в тестовой сети, который отправит вам в ответ **5 эфиров**. Этой суммы будет достаточно для выполнения всех 12 уроков.

#### Пример выполнения

```js
var Core = [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"first","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"abiOf","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getName","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"get","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"remove","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"size","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"next","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_abi","type":"string"},{"name":"_constant","type":"bool"}],"name":"set","outputs":[],"payable":false,"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"module","type":"address"}],"name":"ModuleAdded","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"module","type":"address"}],"name":"ModuleRemoved","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"from","type":"address"},{"indexed":true,"name":"to","type":"address"}],"name":"ModuleReplaced","type":"event"}];
var learning_center = eth.contract(Core).at("0x0144127bf682d4c270091ddcdeabfd79b847a6de");
var Lesson_0 = [{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"ping","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isSended","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"payable":true,"type":"fallback"}];
var lesson = web3.eth.contract(Lesson_0).at(learning_center.get("Lesson_0"));
lesson.ping({from:web3.eth.accounts[0], gas:200000});
```
