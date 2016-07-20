## Lesson 9: Create emission regulator 

> Difficulty: high.

**These DAO Modules will be created:**

- `MarketRuleConstant`

**These Aira DAO Modules will be used:**

- `Aira BuilderMarketRuleConstant` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderMarketRuleConstant.json))
- `DAOMarketRegulator`

### Lesson Description 

Currently `owner` that created `DAO credit` initially can emit new tokens freely. This can decrease your market and currency values. In order to deal with that we are going to create `DAO credit` emission regulatorand add it to market. Shareholders must vote on that.

Market regulator that we created earlier can filter deals according to rules that are set by shareholders. 
`DAO credit` is an example of such rule. Shareholders vote to set these rules.

**Instructions:**

- Call `Aira BuilderMarketRuleConstant` builder. Specify amount of emitted tokens.  
- Vote for this rule by calling `pollUp()` with these arguments: token, your shares count; **Notice: call regulator's `approve` for your shares before**
- Call `Credit ledger` contract (by `owner`) in order to change owner address to market regulator contract address.

**How to check that emission regulator works:**

- Close any deal with token that must be filtered by a rule;
- Call `Credit ledger` contract and check that correct amount of tokens were emitted to DAO owner.

### Skill test 

> Complete this lesson and get 200 `air` tokens! 

To complete this lesson you need to call `Execute()` function of `Lesson 9` contract. Please specify market contract address.
