## Lesson 7: Create market regulator 

> Difficulty: medium.

**These DAO Modules will be created:**

- `DAO market regulator`

**These Aira DAO Modules will be used:**

- `Aira BuilderDAOMarketRegulator` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderDAOMarketRegulator.json))
- `DAO market` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Market.json))

### Lesson Description 

If you add `MarketRegulator` contract - adding lot to market will be possible only if set by regulator conditions are met. In this lesson we will create regulator for `DAO market`. It will only allow lots that sell tokens that are in `DAO core` registry. 

**Instructions:**

- call [BuilderDAOMarketRegulator](https://github.com/airalab/core/wiki/API-Reference#builderdaomarketregulator) with name `Aira BuilderDAOMarketRegulator` and provide these parameters: `_shares, _core, _market, _dao_credits`;
- call (from market owner account) [Market](https://github.com/airalab/core/wiki/API-Reference#market) contract function `setRegulator(true)` that will switch `DAO market` interaction with regulator on;
- delegate `DAO market` market to `MarketRegulator` regulator. Do that by calling `delegate()` method of `DAO market` contract. Pass regulator address as an argument.

**After you create market regulator - try it. Instruction:**

- call `Aira BuilderTokenEmission` contract to create new token that will reflect your market value;
- try to add new lot with some token. It should fail because token were not added to registry;
- add token to registry;
- try to add new lot with that token again. It should succeed.

> Совет: например в DAO Aira на внутреннем рынке есть предложение токенов кураторства команды Aira для вашей DAO. 1 токен = 1 месяцу поддержки. Придумайте такой токен, который был бы полезен в дальнейшем в работе.

### Skill test 

> Complete this lesson and get 100 `air` tokens! 

To complete this lesson you need to call `Execute()` function of `Lesson 7` contract. Please specify market contract address.
