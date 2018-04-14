## How to Launch AIRA 0.12

### Create a new lighthouse

> In case you need one. You can connect to existing lighthouse

Go to [robonomics.network/net](https://robonomics.network/net/) page and press "create your own". You must submit the transaction and the new lighthouse will be added to the list.

![Create a lighthouse](/img/aira012/Screenshot_1.png "Create a lighthouse")

### Obtain the image

Go to release page on [Github](https://github.com/airalab/aira/releases/tag/0.12). Download the .ova image.

![Obtain vm](/img/aira012/Screenshot_2.png "Obtain the image")

### Launch

These steps are done in VirtualBox:
* Import the .ova `Ctrl+I`
* Change RAM to 2Gb
* Change NAT to Bridge in Network

![Importing](/img/aira012/Screenshot_3.png "Importing")

After AIRA is launched it must synchronize with Kovan network. You must wait until it's done and then send ETH and XRT to the address

![Syncing](/img/aira012/Screenshot_4.png "AIRA asks for ETH and XRT")

There is a [Robonomics faucet](https://robonomics.network/faucet/) service. Paste the address to the feild and wait until the transaction is mined. 

The next step is to choose a lighthouse:
![Choose a lighthouse](/img/aira012/Screenshot_5.png "Choose a lighthouse")

In the end AIRA will build the distro and change the generation. When it's finished you can reboot. AIRA is ready to work!

### Tips

Show parity logs:
```
journalctl -u parity -f
```

Show IPFS peers:
```
ipfs swarm peers
```

