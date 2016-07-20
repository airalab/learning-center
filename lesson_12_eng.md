## Lesson 12: Crowdsale

> Difficulty: high.

**These DAO Modules will be created:**

- `Crowdsale`

**These Aira DAO Modules will be used:**

- `TokenEmission`. Контракт, хранящий реестр токенов внутренней валюты ДАО `DAO credit`.
- `Crowdsale`. Контракт, с помощью которого организуется распродажа токенов `DAO credit`.

### Lesson Description  

Primary goal of any DAO is to increase liquidity of it's internal currency by adding new proposals. To stimulate market you need to invest in `value providers`. You'll need a lot of money for that. We can emit and sale (with a fixed price) internal currency. That is called `crowdsale`.

**Instructions:**
- Call `DAO factory` for `Crowdsale builder` contract. Pass address of registry that holds `DAO credit` tokens and address of registry that holds `Ether funds`.

To increase `DAO credit` token quantity you can use [BuilderCrowdsale](https://github.com/airalab/core/wiki/API-Reference#buildercrowdsale) builder that will create [Crowdsale](https://github.com/airalab/core/wiki/API-Reference#crowdsale) module.

**Pass these parameters to `Crowdsale` builder:**

- `Cashflow` contract address to transfer money to it in case of successful crowdsale
- `DAO credit` token address
- Crowdsale start time (UNIX-time)
- Crowdsale period (in seconds)
- Initial price of `DAO credit` token
- Price increase period (in seconds)
- Min. amount of funds
- Max. amount of funds 

> Specify max.amount of funds equals 5 ETH to complete this lesson.

> After contract is created, please send `DAO credit` number of tokens to sell.

## Skill test 

> Complete this lesson and get 200 `air` tokens! 

To complete this lesson you need to send 5 ETH from any account (that later will be the owner of new `DAO credit` tokens). Then call `Execute()` function of `Lesson 12` contract. 

