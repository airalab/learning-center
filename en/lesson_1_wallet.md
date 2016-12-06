# Ethereum Wallet - Lesson 1

First, let's add an Air token to the token list. These tokens are used as a reward for the completion of the lesson. Click the `Contracts` -> `Watch token` button.

![Screenshot 10](/img/Screenshot_10.png)

Token Address is `0x57f7e2ce8f58269a3ce9e998f49c6d79ec1b3b25`  

In order to create the `DAO core` and the `Shareholder token` we need to send a transaction to the `Aira BuilderDAO` builder from the `DAO factory`. First, add the `Factory Core` contract to your Contracts list:

![Screenshot 4](/img/Screenshot_4.png)

Contract Name - Factory Core  
Address is `0xa76422591378d14fb6d94c9da48a42498d8b51da`

Abi:
```js
 [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"get","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getName","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"interfaceOf","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"removeModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"firstModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"}],"name":"set","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"nextModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"}]  
```

Then, find the address of the `Aira BuilderDAO` in the `Factory Core` registry:

![Screenshot 5](/img/Screenshot_5.png)

And add it to your contracts list:

![Screenshot 6](/img/Screenshot_6.png)

Contract Name: `Aira BuilderDAO`  
Address: `0x05Bc6aeF81428D6F6476d9B6005071C267528D3B`  

Abi:
```js
 [{"constant":false,"inputs":[{"name":"_dao_name","type":"string"},{"name":"_dao_description","type":"string"},{"name":"_shares_name","type":"string"},{"name":"_shares_symbol","type":"string"},{"name":"_shares_count","type":"uint256"}],"name":"create","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_buildingCost","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCost","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_price","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}]
 ```

Now we are ready to create a new DAO. Call the `Aira BuilderDAO` -> `Create` function:

![Screenshot 7](/img/Screenshot_7.png)

Fill in dao_name, dao_desc, etc. Please double check the correctness of the address. This account will be the owner of the DAO. You need to include a small amount of ETH with that transaction. The builder will send you back the change, so any >0.01 ETH amount will suffice. Click the `Execute` button.

Please wait a little bit in order for the transaction to be confirmed by the Ethereum network. Now you should go to the `BuilderDAO` -> `Latest Events` list.

![Screenshot 8](/img/Screenshot_8.png)

Instance - the address of new `DAO Core` that was created. Add it to your `Contracts` list:

![Screenshot 9](/img/Screenshot_9.png)

Contract Name: My Test DAO  
Address: See instance above


Abi:
```js
 [{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"get","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"getName","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"interfaceOf","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[],"name":"founder","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"}],"name":"removeModule","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_module","type":"address"}],"name":"contains","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"firstModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"description","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":true,"inputs":[{"name":"_name","type":"string"}],"name":"isConstant","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_name","type":"string"},{"name":"_module","type":"address"},{"name":"_interface","type":"string"},{"name":"_constant","type":"bool"}],"name":"set","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_current","type":"address"}],"name":"nextModule","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_description","type":"string"}],"type":"constructor"}]
```

Let's add the `Shareholder token` to the token list. Go to the `DAO Core` contract -> `First Module`. The first module address is the address of the `Shareholder token`.

We have created the `DAO Core`! Now let's finish our lesson.
In order to do that, add the `Lesson 1` contract to your contract list.

Contract Name - Lesson 1  
Address - `0xc8905A71DF171a55ad235F1409a99300Efbd2505`

Abi:
```js
 [{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]
 ```

Then call the `Execute` function specifying the address of the `DAO core`.

![Screenshot 11](/img/Screenshot_11.png)

You should now get 50 AIR tokens!

![Screenshot 12](/img/Screenshot_12.png)
