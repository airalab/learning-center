## Lesson 12: Crowdsale

> Difficulty: high.

**These DAO Modules will be created:**

- `Crowdsale`

**These Aira DAO Modules will be used:**

- `TokenEmission`. Контракт, хранящий реестр токенов внутренней валюты ДАО `DAO credit`.
- `Crowdsale`. Контракт, с помощью которого организуется распродажа токенов `DAO credit`.

### Lesson Description  

The primary goal of any DAO is to increase the liquidity of it's internal currency by adding new proposals. To stimulate the market you need to invest in `value providers`. You'll need a lot of money for that. We can emit and sell internal currency (at a fixed price). That is called `crowdsale`.

**Instructions:**
- Call `DAO factory` for the `Crowdsale builder` contract. Pass the address of the registry that holds `DAO credit` tokens and the address of the registry that holds `Ether funds`.

To increase the `DAO credit` token quantity you can use [BuilderCrowdsale](https://github.com/airalab/core/wiki/API-Reference#buildercrowdsale) builder that will create the [Crowdsale](https://github.com/airalab/core/wiki/API-Reference#crowdsale) module.

**Pass these parameters to the `Crowdsale` builder:**

- `Cashflow` contract address to transfer money to it in case of successful crowdsale
- `DAO credit` token address
- Crowdsale start time (UNIX-time)
- Crowdsale period (in seconds)
- Initial price of `DAO credit` token
- Price increase period (in seconds)
- Min. amount of funds
- Max. amount of funds 

> Specify the max.amount of funds equals 5 ETH to complete this lesson.

> After a contract is created, please send `DAO credit` the tokens.

## Skill test 

> Complete this lesson and get 200 `air` tokens! 

To complete this lesson you need to send 5 ETH from any account (that later will be the owner of the new `DAO credit` tokens). Then call `Execute()` function of `Lesson 12` contract. 

