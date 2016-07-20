## Lesson 1: Create your own DAO 

> Difficulty: low.

**These DAO Modules will be created:**

- `DAO core`
- `Shareholder token`

**These Aira DAO Modules will be used:**

- `Aira BuilderDAO` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderDAO.json))
- `DAO core` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Core.json))
- `Shareholder token` ([abi](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEmission.json))

### Lesson Description 

First we will create `DAO core`. It will provide us with registry that stores all autonomous contracts that are used by DAO. `Shareholder token` contract is used to control that registry (append/modify/remove items). To create these contracts you need to send transaction from your address to `Aira BuilderDAO` (found in `DAO factory` registry).

#### Input arguments 

Argument| Description | Sample
---------|----------|-------
`_dao_name` | Your organization name | "Martian colony"
`_dao_description` | Short organization description | "DAO for first human colony on Mars"
`_shares_name` | Shares name | Mars colony shares
`_shares_symbol` | Shares symbol, 1 - 3 chars usually | MRS
`_shares_count` | Number of shares that will be emitted during DAO creation | 10000

### Skill test 

> Complete this lesson and get 50 `air` tokens! 

**Instructions:**

- Call `Execute()` function (see `Lesson 1` contract) specifying `DAO core` address. `Lesson 1` contract will check whethere `owner` variable in `DAO core` equals to your address.