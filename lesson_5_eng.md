## Lesson 5: Create internal currency

> Difficulty: low.

DAO's internal market needs special `DAO credit` token in order to create new deals. You must:

- Call `Aira BuilderTokenEmission` (in `DAO factory`) with correct parameters: `_name, _symbol, _decimals, _start_count`;
- Add `DAO credit` token to registry. Send transaction from `DAO core` creator address to do that.

### Skill test 

> Complete this lesson and get 50 `air` tokens! 

To complete this lesson you'll need to call `Execute()` function of `Lesson 5` contract. Please specify new token `_name` and `DAO core` contract address. Please notice that new token `owner` must be equal to your account address.

