# Ethereum Wallet - Lesson 8

The creator of an asset can delegate his duties to the `MarketAgent`. The `MarketAgent` contract is used to represent an end-user on a specific market. An agent can close deals on behalf of his client.

Let's create that contract.

In order to do that, call `DAO MarketRegulator` -> `Sign` function.

![Screenshot 53](/img/Screenshot_53.png)

Wait for the transaction to complete and then get the created `DAO MarketAgent` contract address in the `DAO MarketRegulator` -> `Latest Events` list.

![Screenshot 54](/img/Screenshot_54.png)

Now we are ready to add this module to DAO registry. Open the `DAO Core` account (`My Test DAO` that was created in the first lesson). Select the `Set Module` function. Pass these parameters:

- Name - MarketAgent1
- Address of the module (see above)
- Interface - [github://airalab/core/market/DAOMarketAgent.sol](github://airalab/core/market/DAOMarketAgent.sol)

![Screenshot 55](/img/Screenshot_55.png)

