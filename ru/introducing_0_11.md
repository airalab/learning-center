## Знакомство с релизом AIRA 0.11

**Перед запуском**
- Необходимые пакеты
`$ sudo apt-get install qemu-kvm qemu libvirt-bin`
- Аккаунт Ethereum в тестовой сети kovan
- Небольшое количество Ether на счету
- Токены Air
- USB-stick 16Gb и более, если планируется использоваться, например, на Raspberry Pi

Аккаунт удобнее всего создать с помощью Chrome расширения [Metamask](https://chrome.google.com/webstore/detail/nkbihfbeogaeaoehlefnkodbefgpgknn). Ether и Air можно попросить у [@vourhey](https://t.me/vourhey) и [@Pad1a_evil](https://t.me/Pad1a_evil) в Telegram.

### Получаем образ Aira
Переходим на сайт [https://github.com/airalab/aira](https://github.com/airalab/aira) и качаем последний актуальный raw-образ.

![Obtain image](/img/airalaunch/Screenshot_1.png "Получаем образ")

### Распаковываем
```
$ xz --decompress aira-nixos-x86_64.img.xz
```

### Записываем на флешку *(при необходимости)*
```
$ dd if=aira-nixos-x86_64.img of=/dev/sde status=progress
```

![DD img](/img/airalaunch/Screenshot_2.png "Записываем образ")

### Запускаем образ в эмуляторе
```
$ qemu-kvm -m 2G aira-nixos-x86_64.img
```

![Launch img](/img/airalaunch/Screenshot_3.png "Запускаем образ")

Вводим имя пользователя `user` и пароль `user`

![Enter username and password](/img/airalaunch/Screenshot_4.png "Входим в систему")

Ждем, чтобы клиент parity синхронизировался. За ходом можно следить по логам
```
$ journalctl -u parity -f
```

![Pairty's logs](/img/airalaunch/Screenshot_5.png "Логи parity")

Когда увидели `Imported...`, значит все готово. Заходим в [Dapp](https://airalab.github.io/game/) и покупаем лот. В примере ниже был куплен фьючерс B за 3 Air

![First buy](/img/airalaunch/Screenshot_6.png "Покупаем лот")

Смотрим логи 
```
$ journalctl -u railway-market-switch -f
```

![Railway-market-switch's logs](/img/airalaunch/Screenshot_7.png "Логи railway-market-switch")

На последней строке запись о нашей покупке. Рынок B — right, рынок A — left. Покупаем лот на рынке А, так, чтобы он был дороже, чем текущий на B

![Second buy](/img/airalaunch/Screenshot_8.png "Покупаем лот")

Поезд меняет свое направление

![Train](/img/airalaunch/Screenshot_9.png "Поезд")

Смотрим логи

![Logs](/img/airalaunch/Screenshot_10.png "Логи")
