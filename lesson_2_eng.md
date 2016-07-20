## Lesson 2: Distribute shares

> Difficulty: low.

**These Aira DAO Modules will be used:**

- `Shareholder token` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEmission.json))
- `Aira BuilderShareholder` ([abi](https://github.com/airalab/core/blob/master/abi/builder/BuilderShareholder.json))

### Lesson Description 

Some `shareholder tokens` were emmited when DAO was created. Now you need to distribute them to your team members.

You can do that in 2 different ways:

1. Directly send tokens;
2. Call `Aira BuilderShareholder` builder to create `Shareholder` contract. When `sign` function is called, it will automatically withdraw specified number of tokens from `founder` to `recipient` (specified during contract creation). 

The main difference is that in the first case `recipient` becomes shareholder automatically without any approval. Second option requires explicit approval. Function `sign` is used for that.

> Notice: do not forget to call `approve` function (see `Shareholder token` contract) to enable token withdrawal by `Shareholder` contract.

### Skill test 

> Complete this lesson and get 50 `air` tokens! 

**Instructions:**

- Allow `Airalab learning center` address to withdraw 1 share of `Shareholder token`. 
- Call `Execute()` function from `Lesson 2` contract.

