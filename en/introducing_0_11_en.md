## Introducing AIRA 0.11

**Pre-requirenments**
- These packages are needed
`$ sudo apt-get install qemu-kvm qemu libvirt-bin`
- You need an Ethereum account in kovan testnet
- A small amount of Ether
- Air tokens
- USB-stick 16Gb and more, if you’re going to launch Aira on Raspberry Pi

It’s convenient to create an account in [Metamask](https://chrome.google.com/webstore/detail/nkbihfbeogaeaoehlefnkodbefgpgknn) Chrome extension. You can ask [@vourhey](https://t.me/vourhey) and [@Pad1a_evil](https://t.me/Pad1a_evil) in Telegram for Ether and Air tokens.

### Obtaining Aira
Go to [https://github.com/airalab/aira](https://github.com/airalab/aira) and download the latest raw image.

![Obtain image](/img/airalaunch/Screenshot_1.png "Obtain image")

### Decompress
```
$ xz --decompress aira-nixos-x86_64.img.xz
```

### Burn the image to the USB flash drive *(optional)*
```
$ dd if=aira-nixos-x86_64.img of=/dev/sde status=progress
```

![DD img](/img/airalaunch/Screenshot_2.png "burn the image")

### Launch in emulator
```
$ qemu-kvm -m 2G aira-nixos-x86_64.img
```

![Launch img](/img/airalaunch/Screenshot_3.png "Launch")

Enter user name `user` and password `user`

![Enter username and password](/img/airalaunch/Screenshot_4.png "Log in")

Wait until parity syncronization is finished. Open logs to check if it’s done
```
$ journalctl -u parity -f
```

![Pairty's logs](/img/airalaunch/Screenshot_5.png "Parity's logs")

If you see `Imported...` parity is ready. Go to [Dapp](https://airalab.github.io/game/) and buy a futures. For example B futures was bought for 3 Air below

![First buy](/img/airalaunch/Screenshot_6.png "First buy")

Look to the logs
```
$ journalctl -u railway-market-switch -f
```

![Railway-market-switch's logs](/img/airalaunch/Screenshot_7.png "Railway-market-switch's logs")

You can see the order was closed on the last row. Market B is RIGHT, market A is LEFT. Let’s buy a futures on market A so it would have a higher price

![Second buy](/img/airalaunch/Screenshot_8.png "Second buy")

The train should change its direction

![Train](/img/airalaunch/Screenshot_9.png "The train")

Look to the logs

![Logs](/img/airalaunch/Screenshot_10.png "Logs")
