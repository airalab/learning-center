## Lesson 5: Create an internal DAO token 

> Difficulty: low.

DAO's internal market needs a special `DAO credit` token in order to create new deals. You must:

- Call `Aira BuilderTokenEmission` (in `DAO factory`) with correct parameters: `_name, _symbol, _decimals, _start_count`;
- Add the `DAO credit` token to the registry. Send transaction from the `DAO core` creator address to do that.

### Skill test 

> Complete this lesson and get 50 `air` tokens! 

To complete this lesson you'll need to call the `Execute()` function of the `Lesson 5` contract. Please specify a new token `_name` and `DAO core` contract address. Please notice that the new token `owner` must be the same as your account address.

