# Ethereum Wallet - Lesson 5

DAO's internal market needs a special internal token. This will protect the organization from ETH exchange rate volatility.

We are going to create the `Credit` module in order to issue internal DAO tokens in this lesson.

Find the `Aira BuilderTokenEmission` builder in the `Factory Core` contract. Please check previous lessons if you don't know how to do that.

Add the `Aira BuilderTokenEmission` contract to your contracts list.

Abi:
```js
[{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]

```  
Create the `TestCredits` module with the help of the `Aira BuilderTokenEmission` -> `Create` function.

**Please specify these arguments:**

- Token name
- Token symbol
- Number of decimal places
- Initial amount to emit

> Please take into account the `Number of decimal places` while specifying the `Initial amount to emit`. If you set the `Number of decimal places` to 8 and want to emit 1000 tokens, set the `Initial amount to emit` to 1000 00000000.

![Screenshot 29](/img/Screenshot_29.png)

Send 0.01 ETH to builder. 

Get the created `Credits` contract address in the `Aira BuilderTokenEmission` -> `Latest Events` list.

Add the `Credits` contract to the contracts list.

![Screenshot 30](/img/Screenshot_30.png)

Now we are ready to add this module to the DAO registry. Open the `DAO Core` account (`My Test DAO` that was created in the first lesson). Select the `Set Module` function. Pass these parameters:

- Name - TestCredits
- Address of the module
- ABI - [github.com/airalab/core/blob/master/abi/modules/TokenEmission.json](github.com/airalab/core/blob/master/abi/modules/TokenEmission.json)

Send that transaction from the `Owner` account. Check that everything is OK by getting the address of the `Credits` module from the `DAO Core`.

![Screenshot 31](/img/Screenshot_31.png)

## Complete the lesson

In order to complete the lesson and get a reward, you must call the `Lesson 5` -> `Execute` function specifying the `Credit` name and the `DAO core` contract address.

Address of the `Lesson 5` - `0x580e87d0897a515bf4e61e575d8bdefb47d46011`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_token_name","type":"string"},{"name":"_dao","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  

You should now get 50 AIR as a reward.
