# Ethereum Wallet - Lesson 7

In this lesson we will create the regulator for the `DAO market`. The regulator is used to check that clients are adding lots that meet some special conditions. It will only allow lots that sell tokens that are in the `DAO core` registry. 
In addition, `DAO MarketRegulator` creates new lots through `DAO Credits` only.

Find the `Aira BuilderDAOMarketRegulator` builder in the `Factory Core` contract. Please check previous lessons if you don't know how to do that.

Add the `Aira BuilderDAOMarketRegulator` contract to your contracts list.

Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_shares","type":"address"},{"name":"_core","type":"address"},{"name":"_market","type":"address"},{"name":"_dao_credits","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  

Create the `DAO MarketRegulator` module with the help of the `Aira BuilderDAOMarketRegulator` -> `Create` function.

**Please specify these arguments:**

- The address of the `Shares` module
- The address of the `DAO Core` module
- The address of the `Market` module
- The address of the `Credits` module

Send 0.01 ETH to builder. 

![Screenshot 43](/img/Screenshot_43.png)

Get the created `DAO MarketRegulator` contract address in the `Aira BuilderDAOMarketRegulator` -> `Latest Events` list.

Add this contract to the contracts list

Abi:  
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_sale","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"sale","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"credits","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"notifyDeal","outputs":[],"type":"function"},{"constant":false,"inputs":[],"name":"sign","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"market","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_asset","type":"address"}],"name":"currentRuleOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_buy","type":"address"},{"name":"_quantity","type":"uint256"},{"name":"_price","type":"uint256"}],"name":"buy","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_rule","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollUp","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_asset","type":"address"},{"name":"_count","type":"uint256"}],"name":"pollDown","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"dao_core","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_shares","type":"address"},{"name":"_core","type":"address"},{"name":"_market","type":"address"},{"name":"_dao_credits","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"lot","type":"address"}],"name":"NewLot","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"_value","type":"uint256"}],"name":"Emission","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"agent","type":"address"}],"name":"MarketAgentSign","type":"event"}]

```

Now we are ready to add this module to the DAO registry. Open the `DAO Core` account (`My Test DAO` that was created in the first lesson). Select the `Set Module` function. Pass these parameters:

- Name - MarketRegulator
- Address of the module 
- Abi - [github.com/airalab/core/blob/master/abi/modules/DAOMarketRegulator.json](github.com/airalab/core/blob/master/abi/modules/DAOMarketRegulator.json)

Send that transaction from the `Owner` account. Check that everything is OK by getting the address of the `MarketRegulator` module from the `DAO Core`.

![Screenshot 44](/img/Screenshot_44.png)

![Screenshot 45](/img/Screenshot_45.png)

Now switch the market into `regulated` mode. Call the `Market` -> `Set regulator` function. 
Send that transaction from the `Market`'s `Owner` account. 

![Screenshot 46](/img/Screenshot_46.png)

Check that `Market` mode is selected.

![Screenshot 47](/img/Screenshot_47.png)

Now let's pass market control to the regulator. Use the `Market` -> `Delegate` function. Specify the address of the regulator. Send that transaction from the `Market`'s `Owner` account.

![Screenshot 48](/img/Screenshot_48.png)

Make sure that `Market` is now under the regulator control.

![Screenshot 49](/img/Screenshot_49.png)

> Warning: after control is passed to the regulator, lots can be created only through `DAO MarketRegulator`.

Try to sell some `EthToken`s. We haven't added `EthToken` to `DAO Core` before, so this lot will be blocked by the regulator. As an alternative to `EthToken`, you can create any other token just for a test. 

![Screenshot 50](/img/Screenshot_50.png)

![Screenshot 51](/img/Screenshot_51.png)

As you can see - the contract can't be executed.

Selling some `Shares` (that were added to the `DAO Core` registry before) should work.

![Screenshot 52](/img/Screenshot_52.png)

