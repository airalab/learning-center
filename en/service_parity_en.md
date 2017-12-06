# Parity

Parity service allows you to configure and to enable Ethereum's parity client.

# Options

* `enable` - should be true to enable the service
* `warp` - true or false. It makes client to synchronize only last few blocks and remain part in background. Default `true`
* `chain` - string, chain name. Could be olympic, frontier, homestead, mainnet, morden, ropsten, classic, expanse, testnet, kovan or dev. Default `mainnet`
* `autoSign.enable` - true or false. If true it tells to client to create a new account with password given in `autoSign.passwordFile`. Default `true`
* `autoSign.passwordFile` - string, path to file with password. Default `/var/lib/parity/psk`
* `user` - string. User name from which the sircive is launched. Default `parity`
* `extraOptions` - array of strings. Any acceptable parity's options

# Example

To enable parity client in test network kovan we could do these changes in configuration.nix:

```
services.parity.enable = true;
services.parity.chain = "kovan";
services.parity.autoSign.enable = false;
```
