# Ethereum Wallet - Lesson 4

In this lesson we are going to create `SharesSale` contract to sell some DAO shares (in exchange for ETH).

Find `Factory Core` -> `Aira BuilderShareSale` builder address. Please check previous lessons if you don't know how to do that. 

Add `Aira BuilderShareSale` contract to your contracts list.

Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  
Let's create `ShareSale` contract with the help of `Aira BuilderShareSale` -> `Create` function.

**Please specify these arguments:**

- ETH Receiver address
- `Ether funds` contract address
- `Shareholder token` contract address
- Price of a single share (in `Wei`).

> It is convenient to use [http://ether.fund/tool/converter](http://ether.fund/tool/converter) to convert Wei <-> Eth.

![Screenshot 24](/img/Screenshot_24.png)

Don't forget to send some ETH to the builder (0.01 ETH).

Add `ShareSale` to the contracts list.
Get the created `ShareSale` contract address in `Aira BuilderShareSale` -> `Latest Events` list.

Abi:
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"closed","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"etherFund","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_price_wei","type":"uint256"}],"name":"setPrice","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"priceWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"target","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"type":"constructor"}]

```  

Transfer some `Shares` to `ShareSales` contract.

![Screenshot 25](/img/Screenshot_25.png)

Shares are ready for the sale!

![Screenshot 26](/img/Screenshot_26.png)

To buy some shares, let's send ETH to `ShareSale` contract from another account. Exchange rate is **100 shares * 0.01 = 1 ETH**.

![Screenshot 27](/img/Screenshot_27.png)

If you did everything right - shares and ETH must be transferred.

![Screenshot 28](/img/Screenshot_28.png)

## Complete the lesson

In order to complete the lesson and get a reward, you must call `Lesson 4` -> `Execute` function specifying `ShareSale` contract address.

Address of `Lesson 4` contract is `0x892bec692f4c7121b396f70f7a3b1b88e6dc3000`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_shareSale","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"}],"type":"constructor"}]

```  

You should now get 100 AIR as a reward.
