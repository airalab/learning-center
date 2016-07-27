## Lesson 9: Create emission regulator 

> Difficulty: high.

**These DAO Modules will be created:**

- `MarketRuleConstant`

**These Aira DAO Modules will be used:**

- `Aira BuilderMarketRuleConstant` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderMarketRuleConstant.json))
- `DAOMarketRegulator`

### Lesson Description 

Currently, the `owner` that created the `DAO credit` can initially emit new tokens freely. This can decrease your market value. In order to deal with that, we are going to create a `DAO credit` emission regulator and add it to the market. The shareholders must vote on that.

The market regulator that we created earlier can filter deals according to rules that are set by the shareholders. 
`DAO credit` is an example of such a rule. The shareholders vote to set these rules.

**Instructions:**

- Call the `Aira BuilderMarketRuleConstant` builder. Specify the amount of emitted tokens.  
- Vote for this rule by calling `pollUp()` with these arguments: token, your shares count; **Notice: call the regulator's `approve` for your shares beforehand**
- Call the `Credit ledger` contract (by `owner`) in order to change the owner address to the market regulator contract address.

**How to check that the emission regulator works:**

- Close any deal with a token that must be filtered by a rule;
- Call the `Credit ledger` contract and check that the correct amount of tokens were emitted to the DAO owner.

### Skill test 

> Complete this lesson and get 200 `air` tokens! 

To complete this lesson you need to call the `Execute()` function of the `Lesson 9` contract. Please specify the market contract address.
