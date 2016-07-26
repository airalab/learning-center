# Ethereum Wallet - Lesson 6

We created `Shares`, `Credits`, `EthToken` in the previous lessons. These are our basic assets. Now we will create the `Market` to support the asset exchange. 

Find the `Aira BuilderMarket` builder in the `Factory Core` contract. Please check previous lessons if you don't know how to do that.

Add the `Aira BuilderMarket` contract to your contracts list.

Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  

Call the `Market` -> `Create` function in the `Aira BuilderMarket` contract.

Send 0.01 ETH to builder. 

Get the created `Market` contract address in the `Aira BuilderMarket` -> `Latest Events` list.

Add the `Market` module to the contracts list.

Abi:  
```js
[{"constant":false,"inputs":[{"name":"_lot","type":"address"}],"name":"remove","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"first","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_enable","type":"bool"}],"name":"setRegulator","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_seller","type":"address"},{"name":"_sale","type":"address"},{"name":"_buy","type":"address"},{"name":"_quantity_sale","type":"uint256"},{"name":"_quantity_buy","type":"uint256"}],"name":"append","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_lot","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"size","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"next","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"regulatorEnabled","outputs":[{"name":"","type":"bool"}],"type":"function"}]

```
![Screenshot 32](/img/Screenshot_32.png)

Now we are ready to add this module to the DAO registry. Open the `DAO Core` account (`My Test DAO` that was created in the first lesson). Select the `Set Module` function. Pass these parameters:

- Name - Market 
- Module address 
- ABI - github.com/airalab/core/blob/master/abi/modules/Market.json  

Send that transaction from the `Owner` account. Check that everything is OK by getting the address of the `Market` by calling the `Get Module` function from the `DAO Core`.

![Screenshot 33](/img/Screenshot_33.png)

![Screenshot 34](/img/Screenshot_34.png)

Now let's create some lots. Call the `Market` -> `Append` function. Pass these parameters:

    seller address - The address of the seller 
    sale address - The address of an asset. 
    buy address - The address of the asset that we want to get in exchange 
    quantity_buy - Quantity to buy 
    quantity_sale - Quantity to sell

Create a lot to sell 1000 `Shareholder token`s in exchange for 500 `DAO credit` tokens.

> Please take into account the `Number of decimal places` while specifying quantities. If you set the `Number of decimal places` to 8 and want to get 500 Cr tokens, set the quantity_buy parameter to 500 00000000.

Send the transaction from the seller account

![Screenshot 35](/img/Screenshot_35.png)

The `Market` is not capable of closing the deals itself. It is just a registry of bought/sold contracts. It can create a new deal and tracks its address. 

Let's make sure that you have created the lot. Click on the `Market` contract in `Read from Contract`. Then select `First`.

![Screenshot 40](/img/Screenshot_40.png)

Now add one more lot to buy 500 `DAO credit` tokens for 1 ETH.

![Screenshot 41](/img/Screenshot_41.png)

> Please take into account the `Number of decimal places` while specifying quantities. If you set the `Number of decimal places` to 8 and want to get 500 Cr tokens, set the quantity_buy parameter to 500 00000000.

Let's make sure that you have created the lot. Get the `First` address and then set it into the `Next` field. You should now see the address there.

![Screenshot 42](/img/Screenshot_42.png)

