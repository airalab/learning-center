## Lesson 8: Add market agent

> Difficulty: medium.

**These DAO Modules will be created:**

- `DAO market agent`

**These Aira DAO Modules will be used:**

- `DAOMarketRegulator` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/DAOarketRegulator.json))

### Lesson Description 

The regulator that was added in the previous lesson also helps market agents to do their job. The `MarketAgent` contract is used to represent an end-user in a specific market. An agent can close deals on behalf of his client. 

**To add a market agent to a DAO:**

- Call the regulator's `sign()` method. The regulator will create a market agent contract and will call the `MarketAgentSign(sender, agent)` event.

### Skill test 

> Complete this lesson and get 100 `air` tokens! 

To complete this lesson you need to call the `Execute()` function of the `Lesson 8` contract. Please specify the market agent address and the market address.

