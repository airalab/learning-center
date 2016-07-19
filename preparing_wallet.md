# Подготовка к работе в Ethereum Wallet

Если вы не знакомы с консолью и вам хотелось бы работать через GUI, для прохождения наших уроков, вы можете использовать официальный клиент для сети Ethereum - Ethereum Wallet.

[Wallet latest release](https://github.com/ethereum/mist/releases)

Вам нужен раздел Download

![Screenshot 36](/img/Screenshot_36.png)

Далее, вам нужно засинхронизироваться в тестовой сети. Это можно сделать сразу, выбрав `Testnet` при первом старте, либо если вы этого не сделали сразу, переключить в настройках `Wallet`.

![Screenshot 37](/img/Screenshot_37.png)

Добыв или получив от команды Airalab 0.01 ether для первой транзакции в сеть, можно обратиться к контракту Lesson 0 в тестовой сети, который отправит вам в ответ 5 эфиров. Этой суммы будет достаточно для выполнения всех 12 уроков.

Добавим контракт `Lesson 0` в список просматриваемых контрактов. Для этого нажмем `Watch Contract` в разделе `Contracts`.

Укажем:

    Contract name - Lesson 0
    Address - 0x8EA86cd7C5fE1Fc16d7d8c4B0179f8ceB9b7929E
    Json Interface(Abi):
``` js
      [{"constant":false,"inputs":[],"name":"ping","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isSended","outputs":[{"name":"","type":"bool"}],"type":"function"}]
```
![Screenshot 38](/img/Screenshot_38.png)

Контракт `Lesson 0` появится в списке просматриваемых контрактов. Кликнем на него. Выберем функцию `Ping` в разделе `Write to Contract`, выберем аккаунт с которого будет произведена транзакция и нажимаем кнопку `Execute`. После того, как транзакция подтвердится сетью, вам на аккаунт поступит 5 тестовых ETH.

![Screenshot 39](/img/Screenshot_39.png)
