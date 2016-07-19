## Lesson 3: ETH collector contract

> Difficulty: low.

**These DAO Modules will be created:**

- `Ether funds`

**These Aira DAO Modules will be used:**

- `Aira BuilderTokenEther` ([abi](https://github.com/airalab/core/blob/master/abi/builder/BuilderTokenEther.json)
- `DAO core` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Core.json))
- `Ether funds` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEther.json))

### Lesson Description 

We can accumulate all invested (by shareholders) ETH in a single contract. It will not track each shareholder share percentage. All ETH that is sent to contract can be withdrawn **only** by account that sent it. 

### Skill test 

> Complete this lesson and get 50 `air` tokens! 

**Instructions:**

- Create contract that will accumulate all ETH by calling [Aira BuilderTokenEther](https://github.com/airalab/core/wiki/API-Reference#buildertokenether).
- Send **0.1** ETH to your account in [TokenEther](https://github.com/airalab/core/wiki/API-Reference#tokenether) contract that you created before.
- Call `Execute()` function from `Lesson 3` contract. Please specify your address.

