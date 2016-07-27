## Lesson 7: Create market regulator 

> Difficulty: medium.

**These DAO Modules will be created:**

- `DAO market regulator`

**These Aira DAO Modules will be used:**

- `Aira BuilderDAOMarketRegulator` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderDAOMarketRegulator.json))
- `DAO market` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Market.json))

### Lesson Description 

If you add a `MarketRegulator` contract - adding lots to a market will be possible only if the set by regulator conditions are met. In this lesson we will create the regulator for the `DAO market`. It will only allow lots that sell tokens that are in the `DAO core` registry. 

**Instructions:**

- Call [BuilderDAOMarketRegulator](https://github.com/airalab/core/wiki/API-Reference#builderdaomarketregulator) with the name `Aira BuilderDAOMarketRegulator` and provide these parameters: `_shares, _core, _market, _dao_credits`;
- Call (from market owner account) [Market](https://github.com/airalab/core/wiki/API-Reference#market) contract function `setRegulator(true)` that will switch on the `DAO market` interaction with a regulator;
- Delegate the `DAO market` market to `MarketRegulator` contract. Do that by calling the `delegate()` method of the `DAO market` contract. Pass the regulator address as an argument.

**After you create a market regulator - try it. Instruction:**

- Call the `Aira BuilderTokenEmission` contract to create a new token that will reflect your market value;
- Try to add a new lot with some tokens. It should fail because tokens were not added to the registry;
- Add a token to the registry;
- Try to add a new lot with that token again. It should succeed.

> Advice: For example, Aira DAO has an Aira team curation proposal on the internal market. 1 token = 1 month of curating. Create a token that will be useful and valuable.

### Skill test 

> Complete this lesson and get 100 `air` tokens! 

To complete this lesson you need to call the `Execute()` function of the `Lesson 7` contract. Please specify market contract address.
