## Lesson 11: Create Board of Directors 

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

Currently your DAO has no elected board of directors. Each shareholder can decide how to invest his `Ether funds` money and the DAO Core is controlled only by the owner. If your organization is going to grow - it will be convenient to add a board of directors that will then control the flow of investments and the DAO core. 

**To add a Board of directors:**

- Call `DAO factory` to get the `Board of Directors builder`. Please specify the `Shareholder token` registry address and the `Ether funds` address.
- Create a `Board of directors` contract and distribute `Directors voting tokens` to add members to the board.
- Vote (51% of tokens) to activate the `Directors voting token` by using the `Boad of directors` contract function `electBoardofDirectors()`
- Make `Board of Directors` the owner of `Ether funds`.

> `Board of Directors` contract has `pollUp` method that can be used to start elections in order to change the board of directors. Control is passed to new members if they receive 51% or more of votes. Shareholders can not vote for multiple variants of board at once. Voting freezes the shareholders' shares, but he can always take his vote back using the `pollDown` method. 

**To try Board of directors in action:**

- Create a new `proposal` request from any member of the board of directors.
- Collect 51% of the directors' votes.
- Check that the funds are transferred to the proposal's `target` address.

## Skill test 

> Complete this lesson and get 200 `air` tokens! 

To complete this lesson you need to call the `Execute()` function of the `Lesson 11` contract. Please specify the `board of directors` contract address. Notice that at least **1** proposal is needed to be accepted by Board of directors.
