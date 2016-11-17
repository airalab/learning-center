# Ethereum Wallet - Lesson 8

The creator of an asset can delegate his duties to the `MarketAgent`. The `MarketAgent` contract is used to represent an end-user on a specific market. An agent can close deals on behalf of his client.

Let's create that contract.

In order to do that, call the `DAO MarketRegulator` -> `Sign` function.

![Screenshot 53](/img/Screenshot_53.png)

Wait for the transaction to complete and then get the created `DAO MarketAgent` contract address in the `DAO MarketRegulator` -> `Latest Events` list.

![Screenshot 54](/img/Screenshot_54.png)

Now we are ready to add this module to the DAO registry. Open the `DAO Core` account (`My Test DAO` that was created in the first lesson). Select the `Set Module` function. Pass these parameters:

- Name - MarketAgent1
- Address of the module (see above)
- Interface - [github://airalab/core/market/DAOMarketAgent.sol](github://airalab/core/market/DAOMarketAgent.sol)

![Screenshot 55](/img/Screenshot_55.png)

## Complete the lesson

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 8` для вызова функции `Execute`, передав адрес контракта `Market` и адрес созданного контракта `MarketAgent`.
Address Lesson 8 - `0xBF5dC2067Cc97d9DBb5D4E22F56095B605025671`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_market","type":"address"},{"name":"_agent","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 100 Air.
