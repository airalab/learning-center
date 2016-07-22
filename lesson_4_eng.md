## Lesson 4: Fund raising 

> Difficulty: medium.

**These DAO Modules will be created:**

- `ShareSale`

**These Aira DAO Modules will be used:**

- `Aira BuilderShareSale` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderShareSale.json))
- `Shareholder token` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEmission.json))
- `ShareSale` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/ShareSale.json))
- `Ether funds` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEther.json))

### Lesson Description 

As a DAO creator, you can emit more shares. You may need to do that if you need additional ETH investment.
In order to do that in a way that is safe for all parties, you need to use the [Aira BuilderShareSale](https://github.com/airalab/core/wiki/API-Reference#buildersharesale) builder that can be found in `DAO factory`. 

**Please specify these arguments:**

- Receiver address
- `Ether funds` contract address
- `Shareholder token` contract address
- Price of a single share (in `Wei`).

**After a `ShareSale` contract is created:**

- Send shares from the seller account (`Shareholder token` contract) to the [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale) contract. 
- Calculate the ETH amount needed (the share count * price of a single share) and send it from the buyer account to [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale). 
- Check that the ETH is received by the seller account in `Ether funds` contract.
- Check that tokens are received by the buyer account in `Shareholder token` contract.

> Notice: the shares will be received by the address that sent ETH to [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale)! Do not forget that.

### Skill test 

> Complete this lesson and get 100 `air` tokens! 

To complete this lesson you need to sell your shares and receive ETH. Then call the `Execute()` function of the `Lesson 4` contract. Please specify the `ShareSale` contract address.

