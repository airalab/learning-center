## Lesson 12: Crowdfunding

> Difficulty: high.

**These DAO Modules will be created:**

- `Crowdfunding`

**These Aira DAO Modules will be used:**

- `BuilderCrowdfunding` ([abi](https://raw.githubusercontent.com/airalab/dao-factory/develop/abi/BuilderCrowdfunding.json))
- `TokenEmission`. It holds `DAO credit` tokens.
- `Crowdfunding`. It takes ETH and returns `DAO credit` tokens.

### Lesson Description  

The primary goal of any DAO is to increase the liquidity of it's internal currency by adding new proposals. To stimulate the market you need to invest in `value providers`. You'll need a lot of money for that. We can emit and sell internal currency (at a fixed price). That is called `crowdfunding`.

**Instructions:**
- Call `DAO factory` for the `Aira BuilderCrowdfunding` contract. You should pass the following:

- `_fund` - congress address
- `_bounty` - `DAO credit` address
- `_reference` - whitepaper reference
- `_startBlock` - funding start block number
- `_stopBlock` - funding stop block number
- `_minValue` - minimal funded value in wei
- `_maxValue` - maximal funded value in wei
- `_scale` - bounty scaling factor by funded value
- `_startRatio` - initial bounty ratio
- `_reductionStep` - bounty reduction step in blocks 
- `_reductionValue` - bounty reduction value
- `_client` - congress address

> Crowdfunding contract should be owner of `DAO credit` to emisse tokens

> Specify the max.amount of funds equals 5 ETH to complete this lesson.

> After a contract is created, please send `DAO credit` the tokens.

## Skill test 

> Complete this lesson and get 200 `ABT` tokens! 

To complete this lesson you need to send 5 ETH from any account (that later will be the owner of the new `DAO credit` tokens). Then call `Execute()` function of `Lesson 12` contract. 

