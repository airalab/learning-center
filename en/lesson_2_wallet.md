# Ethereum Wallet - Lesson 2

We are going to distribute shares between DAO members in this lesson.

Currently the account that created the DAO collects all the shares.

You can distribute shares in 2 different ways:

1. Send the tokens directly;
2. Call an `Aira BuilderShareholder` builder to create a `Shareholder` contract. When the `Sign` function is called, it will automatically withdraw a specified number of tokens from the `founder` to the `recipient` (specified during contract creation). 

## The first way 

It is very easy to transfer tokens to another account. Click on the shareholder account, then on the `Send` button:

![Screenshot 13](/img/Screenshot_13.png)

Specify the amount and the address and click on the `Send` button again.

![Screenshot 14](/img/Screenshot_14.png)

The shares are transferred!

## The second way 

In this case the other side must approve the transfer first. Create the `Shareholder` contract. Do that by going to the `Factory Core` contract -> `Get module`. Find the `Aira BuilderShareholder` address.

![Screenshot 15](/img/Screenshot_15.png)

We've got an address - `0x6bB6479624a59E4A87A9B37211F63089385Ce13f`  
Now create the contract. Add the `Aira BuilderShareholder` builder contract to your contracts list.

![Screenshot 16](/img/Screenshot_16.png)

Abi:  
```js
 [{"constant":false,"inputs":[{"name":"_buildingCostWei","type":"uint256"}],"name":"setCost","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_shares","type":"address"},{"name":"_count","type":"uint256"},{"name":"_recipient","type":"address"}],"name":"create","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"buildingCostWei","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_proposal","type":"address"}],"name":"setProposal","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_cashflow","type":"address"}],"name":"setCashflow","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getLastContract","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"uint256"}],"name":"getContractsOf","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_buildingCost","type":"uint256"},{"name":"_cashflow","type":"address"},{"name":"_proposal","type":"address"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"sender","type":"address"},{"indexed":true,"name":"instance","type":"address"}],"name":"Builded","type":"event"}] ```  

Create the `Shareholder` contract. In order to do that call the `Aira BuilderShareholder` -> `Create`. Provide the address of the shares, the amount, and the address of the recipient.

![Screenshot 17](/img/Screenshot_17.png)

Wait for transaction confirmation, then look up the new contract address in the `Aira BuliderShareholder` -> `Latest Events`.

![Screenshot 18](/img/Screenshot_18.png)

Now we have to grant the token-controlling ability to the `Shareholder` contract. Add the `Shares` contract to the contract list:

Address − your `Shares` contract address

Abi:
```js
[{"constant":true,"inputs":[],"name":"name","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"},{"name":"_value","type":"uint256"}],"name":"approve","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"totalSupply","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_from","type":"address"},{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transferFrom","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"decimals","outputs":[{"name":"","type":"uint8"}],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"burn","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_value","type":"uint256"}],"name":"emission","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"balanceOf","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"symbol","outputs":[{"name":"","type":"string"}],"type":"function"},{"constant":false,"inputs":[{"name":"_to","type":"address"},{"name":"_value","type":"uint256"}],"name":"transfer","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"},{"name":"","type":"address"}],"name":"allowance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[{"name":"_address","type":"address"}],"name":"getBalance","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[{"name":"_address","type":"address"}],"name":"unapprove","outputs":[],"type":"function"},{"inputs":[{"name":"_name","type":"string"},{"name":"_symbol","type":"string"},{"name":"_decimals","type":"uint8"},{"name":"_start_count","type":"uint256"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_from","type":"address"},{"indexed":true,"name":"_to","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Transfer","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"_owner","type":"address"},{"indexed":true,"name":"_spender","type":"address"},{"indexed":false,"name":"_value","type":"uint256"}],"name":"Approval","type":"event"}]
```

Call the `Shares` -> `Approve` function. Specify the `Shareholder`'s contract address and the amount of shares it will be able to control. The account that you will send this transaction from must be the `Shares` owner (`Owner`).

![Screenshot 19](/img/Screenshot_19.png)

Add the `Shareholder` contract to the list: 

Abi:
```js
[{"constant":true,"inputs":[],"name":"shares","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"count","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":false,"inputs":[],"name":"sign","outputs":[],"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"complete","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"recipient","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_shares","type":"address"},{"name":"_count","type":"uint256"},{"name":"_recipient","type":"address"}],"type":"constructor"}]
```

We are ready to sign the shareholder contract. Let's call the `Sign` function by sending the transaction from the contract creator address. 

![Screenshot 20](/img/Screenshot_20.png)

Shares must be transferred to another account.

![Screenshot 21](/img/Screenshot_21.png)

## Complete the lesson 

In order to complete the lesson and get a reward, you must `Approve` 1 share to the `Airalab learning center`:

Address of `Airalab learning center` −  `0x5bfff77793b08d6b7e1c03e05d37b9898e004eb9`

Then call the `Execute` function of the 2nd lesson contract.
2nd lesson contract address − `0x62808bc94e156f45a9f8e7e41ba969acfc467bed`  

Abi:
```js
[{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"accountOf","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":false,"inputs":[{"name":"_dao","type":"address"},{"name":"_shares_name","type":"string"}],"name":"execute","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"emissionRegulator","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[],"name":"airalab_learning_center","outputs":[{"name":"","type":"address"}],"type":"function"},{"inputs":[{"name":"_emissionRegulator","type":"address"},{"name":"_airalab_learning_center","type":"address"}],"type":"constructor"}]
```
