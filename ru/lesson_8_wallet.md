# Урок 8 в Ethereum Wallet

Иногда возникают ситуации, когда создатель ценности не желает сам заниматься работой на рынке, он хочет доверить эту часть работы другой сущности. Для таких случаев существует контракт агента рынка `MarketAgent`. Используя такой контракт, держатель ценности(токена) может доверить их агенту рынка, который будет совершать сделки от лица держателя. Создадим такой контракт.

Чтобы создать такой контракт, вызовем функцию `Sign` в модуле `DAO MarketRegulator`.

![Screenshot 53](/img/Screenshot_53.png)

После того, как транзакция будет подтверждена сетью, найдем адрес созданного контракта в `Latest Events` в модуле `DAO MarketRegulator`.

![Screenshot 54](/img/Screenshot_54.png)

Теперь внесем его в список модулей `DAO Core`, используя функцию `Set module` и адрес из события.

Укажем:  

    Название модуля - MarketAgent1
    Адрес модуля - из `Latest Events`
    Interface - github://airalab/core/market/DAOMarketAgent.sol

![Screenshot 55](/img/Screenshot_55.png)

## Завершение урока

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 8` для вызова функции `Execute`, передав адрес контракта `Market` и адрес созданного контракта `MarketAgent`.
Address Lesson 8 - `0xBF5dC2067Cc97d9DBb5D4E22F56095B605025671`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_market","type":"address"},{"name":"_agent","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 100 Air.
