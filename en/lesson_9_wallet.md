# Ethereum Wallet - Lesson 9

In this lesson we will create `MarketRuleConstant` module. It will allow us to set the emission rules for the `DAO Credits`.

Find the `Aira BuilderMarketRuleConstant` builder in the `Factory Core` contract. Please check previous lessons if you don't know how to do that.

Add the `Aira BuilderMarketRuleConstant` contract to your contracts list.

Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_emission","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```
Create the `MarketRuleConstant` module with the help of the `Aira BuilderMarketRuleConstant` -> `Create` function.

**Please specify these arguments:**

    Emission - the amount of tokens to be emited for each deal.

Send 0.01 ETH to builder.

![Screenshot 56](/img/Screenshot_56.png)

Get the created `MarketRuleConstant` contract address in the `Aira BuilderMarketRuleConstant` -> `Latest Events` list.

Now we are ready to add this module to the DAO registry. Open the `DAO Core` account (`My Test DAO` that was created in the first lesson). Select the `Set Module` function. Pass these parameters:

- Name - MarketRuleConstant
- module - Address of the module
- interface - Link github://airalab/core/market/MarketRuleConstant.sol

Send that transaction from the `Owner` account. Check that everything is OK by getting the address of the `MarketRuleConstant` module from the `DAO Core`.

![Screenshot 57](/img/Screenshot_57.png)

![Screenshot 58](/img/Screenshot_58.png)

We need to vote for the rule in order for it to start working. Call `Shares` -> `Approve` function of `Market regulator`. Get the `Market regulator` address in `DAO Core`.

![Screenshot 59](/img/Screenshot_59.png)

Click on the `Shares` module and then select `Approve` function.
Sepcify these parameters:

- The address of Market regulator
- Count of shares - 1

![Screenshot 60](/img/Screenshot_60.png)

Send the transaction from the account that has some `Shares`.

Vote for the rule. Call `Poll Up` function. Please specify:

- The address of an emitted asset - `Credits`
- The address of the rule
- Count of shares to vote with - 1

![Screenshot 61](/img/Screenshot_61.png)

The last thing to do: allow the `Market regulator` to control `Credits`. Call `Credits` -> `Delegate` function. Pass address of the `Market Regulator` as a parameter. Send this transaction from `Credits` owner.

![Screenshot 62](/img/Screenshot_62.png)

## Complete the lesson

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 9` для вызова функции `Execute`, передав адрес контракта `Market regulator`, адрес `Credits` и адрес созданного контракта `Market rule constant`.
Address Lesson 9 - `0x3C43cE2B6469243Aa5F5F44053CFc689c6AcbDAd`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_regulator","type":"address"},{"name":"_asset","type":"address"},{"name":"_rule","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 200 Air.
