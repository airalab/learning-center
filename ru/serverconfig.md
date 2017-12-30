## Настройка сервера

Сервер под управлением NixOS

1. Подключаемся по ssh
2. Добавляем канал hydra.aria.life и binary cache
    ```
    $ nix-channel --add https://hydra.aira.life/project/aira/channel/latest
    $ nix-channel --update
    ```
3. Редактируем файл configuration.nix
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
4. Обновляем в соответствии с новой конфигурацией
    ```
    $ nixos-rebuild switch
    ```
5. Устанавливаем parity, ipfs
    ```
    $ nix-env -i parity-1.8.2 ipfs
    ```
6. Монтируем /storage от RaspberryPi в локальную папку. Используем адрес из пункта по настройке cjdns
    ```
    $ sshfs pi@[<IPv6>]:/storage storage/
    ```
7. Создаем аккаунт в parity 
    ```
    $ parity --chain ropsten account new
    ```
8. Сохраняем пароль в файл
    ```
    $ echo “*********” > pass
    ```
9. Пополняем баланс аккаунта из пункта 7.
10. Отправляем эфир контракту `0xC00Fd9820Cd2898cC4C054B7bF142De637ad129A`. Он вернет на баланс, с которого была отправлена транзакция, WETH равное полученному ETH. Ещё понадобиться токен utility (`0x5df531240f97049ee8d28a8e51030a3b5a8e8ce4`). Его можно попросить у команды Airalab.
11. Запускаем Parity
    ```
    $ parity --chain ropsten --unlock <account> --password pass
    ```
12. Запускаем IPFS
    ```
    $ ipfs daemon --enable-pubsub-experiment
    $ ipfs pubsub sub aira_market
    ```
13. Запускаем robonomics_market
    ```
    $ source .nix-profile/setup.bash
    $ roslaunch robonomics_market market.launch
    ```
14. Запускаем robonomics_liability
    ```
    $ roslaunch robonomics_liability liability.launch
    ```
15. Нам понадобится скрипт, который будет публиковать данные в IPFS (https://goo.gl/LWuN3X)
    ```
    $ ./publishnode.py
    ```
