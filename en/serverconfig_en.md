## Server configuration

NixOS is installed on server

1. Connect by ssh
2. Add the channel hydra.aria.life and binary cache
    ```
    $ nix-channel --add https://hydra.aira.life/project/aira/channel/latest
    $ nix-channel --update
    ```
3. Edit configuration.nix
    ```
    networking.firewall.allowedTCPPorts = [ 4001 30303 ];
    networking.firewall.allowedUDPPorts = [ 30303 42000 ];
    nix.binaryCaches = [ https://cache.nixos.org https://hydra.aira.life ];
      nix.binaryCachePublicKeys = [ "hydra.aira.life-1:StgkxSYBh18tccd4KUVmxHQZEUF7ad8m10Iw4jNt5ak=" ];
        # Cjdns routing service.
        services.cjdns = {
          enable = true;
          ETHInterface = {
            bind = "all";
            beacon = 1;
          };
          UDPInterface = {
            bind = "0.0.0.0:42000";
            connectTo = {
              # FR/Strasbourg
              "164.132.111.49:53741" = {
                password = "cr36pn2tp8u91s672pw2uu61u54ryu8";
                publicKey = "35mdjzlxmsnuhc30ny4rhjyu5r1wdvhb09dctd1q5dcbq6r40qs0.k";
              };
            };
          };
        };
    ```
4. Update with new configurationО
    ```
    $ nixos-rebuild switch
    ```
5. Install parity, ipfs
    ```
    $ nix-env -i parity-1.8.2 ipfs
    ```
6. Mount /storage from RaspberryPi locally. Use the address from cjdns configuration step
    ```
    $ sshfs pi@[<IPv6>]:/storage storage/
    ```
7. Create new parity account
    ```
    $ parity --chain ropsten account new
    ```
8. Save the password
    ```
    $ echo “*********” > pass
    ```
9. Send ETH to the account from step 7
10. Send ETH to `0xC00Fd9820Cd2898cC4C054B7bF142De637ad129A` smart-contract. It will send WETH back to you according your ETH value. Also you need to get utility token (`0x5df531240f97049ee8d28a8e51030a3b5a8e8ce4`). You can ask for it Airalab's engineers.
11. Launch Parity
    ```
    $ parity --chain ropsten --unlock <account> --password pass
    ```
12. Launch IPFS
    ```
    $ ipfs daemon --enable-pubsub-experiment
    $ ipfs pubsub sub aira_market
    ```
13. Launch robonomics_market
    ```
    $ source .nix-profile/setup.bash
    $ roslaunch robonomics_market market.launch
    ```
14. Launch robonomics_liability
    ```
    $ roslaunch robonomics_liability liability.launch
    ```
15. You are needed a script to publish the data to IPFS (https://goo.gl/LWuN3X)
    ```
    $ ./publishnode.py
    ```
