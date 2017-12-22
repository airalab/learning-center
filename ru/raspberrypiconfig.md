## Настройка Raspberry Pi

### Готовый дистрибутив Raspberry Pi

1. Скачиваем дистрибутив [link](https://drive.google.com/a/aira.life/file/d/17NT6xm0VRl3Elh0Cm0ufhjswdX4iIgY7/view?usp=sharing)
2. Распаковываем `$ xz --decompress smg2.img.xz`
3. Записываем на флешку от 4Gb `$ dd if=smg2.img of=/dev/sdc`. Если нужно, увеличиваем второй раздел
4. Загружаемся на Raspberry Pi, пользователь pi, пароль raspberry. Пароль лучше поменять
5. Подключаем сенсор
6. В файле `/etc/cjdroute.conf` добавляем пиров
    ```
    "164.132.111.49:53741": {
        "password": "cr36pn2tp8u91s672pw2uu61u54ryu8",
        "publicKey": "35mdjzlxmsnuhc30ny4rhjyu5r1wdvhb09dctd1q5dcbq6r40qs0.k"
    },
    "195.135.232.19:60111": {
        "publicKey": "4u15jbz7t6rcvx20qp9rpuzsjffsrg567x7mz9g9mmczzvc8cd60.k",
        "password": "l9721qw2xqmxguyv7qcgs0l6b1k2nvr",
    },
    "52.232.72.83:31259": {
        "login": "default-login",
        "password":"tt3yb4613wgh3sgfsgkg1fvk24k6hnk",
        "publicKey":"jyl980gs5513dw5x19qp3khb6337ljsx3sgwbsmnsvvyb5jdcw90.k", 
        "peerName":"airalab.hype"
    }
    ```

### Настройка на существующем дистрибутиве

1. Подключаем сенсор 
2. Создаем папку /storage
    `$ sudo mkdir -p /storage/data`
    `$ sudo mkdir -p /storage/images`
3. Скачиваем и устанавливаем rrdtool (https://goo.gl/fmgFfH) 
4. Скачиваем драйверы для SMG2 (https://goo.gl/qZ4Zuf)
5. В файле build меняем папку `/var/rrd` на `/storage/data`
6. Собираем драйвер
    `$ ./build`
7. Полученный файл `SMG2` перемещаем в `/bin/SMG2`
    `$ sudo mv SMG2 /bin/SMG2`
8. Копируем файл smg2.service (https://goo.gl/pdNpwb) в `/etc/systemd/system/` и запускаем
    `$ sudo systemctl enable smg2.service`
9. Скачиваем и собираем cjdns (https://github.com/cjdelisle/cjdns). После этого добавляем сервисы и исполняемый файл в систему
    `$ sudo cp cjdns/contrib/systemd/* /etc/systemd/system/`
    `$ sudo cp cjdns/cjdroute /usr/bin/`
10. Запускаем сервис. Должен появиться файл `/etc/cjdroute.conf`
    `$ sudo systemctl enable cjdns`
11. Добавляем публичных пиров в файл `/etc/cjdroute.conf` в раздел “connectTo” (см выше). На этом этапе у нас должен быть IPv6 адрес, он нам понадобится в дальше
12. Скачиваем дополнительные скрипты, делаем их исполняемыми и кладем в папку `/usr/bin/`
    gettimestamp.sh (https://goo.gl/TYjRMT) 
    render.sh (https://goo.gl/6kdgok) 
13. Добавляем задачу в crontab
    ```*/15 *  * * *   root     render.sh /storage/data/radiation.rrd /storage/images/`gettimestamp.sh`.png "Radiation"```
