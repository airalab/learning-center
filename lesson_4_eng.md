## Lesson 4: Investment 

> Difficulty: medium.

**These DAO Modules will be created:**

- `ShareSale`

**These Aira DAO Modules will be used:**

- `Aira BuilderShareSale` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderShareSale.json))
- `Shareholder token` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEmission.json))
- `ShareSale` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/ShareSale.json))
- `Ether funds` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEther.json))

### Lesson Description 

As a DAO creator you can emit more shares. You may need that if you need additional ETH investment.
In order to do that in a safe for all parties way, you need to use [Aira BuilderShareSale](https://github.com/airalab/core/wiki/API-Reference#buildersharesale) builder that can be found in `DAO factory`. 

**Please specify these arguments:**

- receiver address
- `Ether funds` contract address
- `Shareholder token` contract address
- price of single share (in `Wei`).

**After `ShareSale` contract is created:**

- Send shares from seller account (`Shareholder token` contract) to [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale) contract. 
- Calculate needed ETH amount (share count * price of single share) and send it from buyer account to [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale). 
- Check that ETH is received by seller account in `Ether funds` contract.
- Check that tokens are received by buyer account in `Shareholder token` contract.

> Notice: shares will be received by address that sent ETH to [ShareSale](https://github.com/airalab/core/wiki/API-Reference#sharesale)! Do not forget that.

### Skill test 

> Complete this lesson and get 100 `air` tokens! 

To complete this lesson you need to sell shares and receive ETH. Then call `Execute()` function of `Lesson 4` contract. Please specify `ShareSale` contract address.

