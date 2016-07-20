## Lesson 8: Add market agent

> Difficulty: medium.

**These DAO Modules will be created:**

- `DAO market agent`

**These Aira DAO Modules will be used:**

- `DAOMarketRegulator` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/DAOarketRegulator.json))

### Lesson Description 

Regulator that was added in a previous lesson also helps market agents to do their job. `MarketAgent` contract is used as an impersonation of an end-user on a specific market. Agent can close deals on behalf of his client. 

**To add market agent to a DAO:**

- Call regulator's `sign()` method. Regulator will create market agent contract and will call `MarketAgentSign(sender, agent)` event.

### Skill test 

> Complete this lesson and get 100 `air` tokens! 

To complete this lesson you need to call `Execute()` function of `Lesson 8` contract. Please specify market agent address and market address.

