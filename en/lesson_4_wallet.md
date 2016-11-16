# Ethereum Wallet - Lesson 4

We are going to create a `SharesSale` contract to sell some DAO shares (in exchange for ETH) in this lesson.

Find the `Factory Core` -> `Aira BuilderShareSale` builder address. Please check previous lessons if you don't know how to do that.

Add the `Aira BuilderShareSale` contract to your contracts list.

Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  
Let's create the `ShareSale` contract with the help of the `Aira BuilderShareSale` -> `Create` function.

**Please specify these arguments:**

- Address of the ETH Receiver
- Address of the `Ether funds` contract
- Address of the `Shareholder token` contract
- Price of a single share (in `Wei`).

> It is convenient to use [http://ether.fund/tool/converter](http://ether.fund/tool/converter) to convert Wei <-> Eth.

![Screenshot 24](/img/Screenshot_24.png)

Don't forget to send some ETH to the builder (0.01 ETH).

Add `ShareSale` to the contracts list.
Get the created `ShareSale` contract address in the `Aira BuilderShareSale` -> `Latest Events` list.

Abi:
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"closed","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"etherFund","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_price_wei","type":"uint256"}],"name":"setPrice","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"priceWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"target","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_target","type":"address"},{"name":"_etherFund","type":"address"},{"name":"_shares","type":"address"},{"name":"_price_wei","type":"uint256"}],"type":"constructor"}]

```  

Transfer some `Shares` to the `ShareSales` contract.

![Screenshot 25](/img/Screenshot_25.png)

The shares are ready for the sale!

![Screenshot 26](/img/Screenshot_26.png)

To buy some shares, let's send some ETH to the `ShareSale` contract from another account. The exchange rate is **100 shares * 0.01 = 1 ETH**.

![Screenshot 27](/img/Screenshot_27.png)

If you did everything right - the shares and ETH will have been transferred.

![Screenshot 28](/img/Screenshot_28.png)

## Complete the lesson

In order to complete the lesson and get a reward, you must call the `Lesson 4` -> `Execute` function specifying the address of `ShareSale` contract.

Address of the `Lesson 4` contract is `0x892bec692f4c7121b396f70f7a3b1b88e6dc3000`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_shareSale","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  

You should now get 100 AIR as a reward.
