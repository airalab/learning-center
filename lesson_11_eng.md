## Lesson 11: Board of directors 

> Difficulty: high.

**These DAO Modules will be created:**

- `Board of Directors`
- `Directors voting token`

**These Aira DAO Modules will be used:**

- `Board of Directors builder`
- `Board of Directors`
- `Directors voting token`
- `Shareholder token`

### Lesson description 

Currently your DAO has no elected board of directors. Each shareholder can decide how to invest his `Ether funds` money and DAO Core is controlled only by the owner. If your organization will grow - it will be convinient to add Board of directors that will then control flow of investments and the DAO core. 

**To add Board of directors:**

- Call `DAO factory` to get `Board of Directors builder`. Please specify `Shareholder token` registry address and `Ether funds` address.
- Create `Board of directors` contract and distribute `Directors voting tokens` to add members to the board.
- Vote (51% of tokens) to activate `Directors voting token` by using `Boad of directors` contract function `electBoardofDirectors()`
- Make `Board of Directors` owner of `Ether funds`.

> `Board of Directors` contract has `pollUp` method that can be used to start elections in order to change board of directors. Control is passed to new members if 51% votes reached. Shareholders can not vote for multiple variants of board at once. Voting freezes shareholders shares, but he can always take his vote back using `pollDown` method. 

**To try Board of directors in action:**

- Create new `proposal` request from any member of Board of Directors.
- Collect 51% of directors votes.
- Check that funds are transferred to proposal's `target` address.

## Skill test 

> Complete this lesson and get 200 `air` tokens! 

To complete this lesson you need to call `Execute()` function of `Lesson 11` contract. Please specify `board of directors` contract address. Notice that at least **1** proposal is needed to be accepted by Board of directors.
