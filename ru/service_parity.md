# Parity

Parity service служит для тонкой настройки и запуска клиента сети Ethereum `parity`.

# Опции

* `enable` - должен быть true, чтобы запустить сервис.
* `warp` - true или false. Указывает клиенту скачивать только последние несколько снимков blockchain, необходимые для работы, а остальное синхронизируется в фоне. По умолчанию `true`
* `chain` - строковый параметр, имя сети. Может быть olympic, frontier, homestead, mainnet, morden, ropsten, classic, expanse, testnet, kovan или dev. По умолчанию `mainnet`
* `autoSign.enable` - true или false. Указывает, создавать ли нового пользователя. Обязательный параметр `autoSign.passwordFile`. По умолчанию `true`
* `autoSign.passwordFile` - строковый параметр, путь к файлу с паролем. По умолчанию `/var/lib/parity/psk`
* `user` - строковый параметр. Имя пользователя, от которого запускается сервис. По умолчанию `parity`
* `extraOptions` - массив строк. Любые другие аргументы для клиента parity

# Пример

Для запуска клиента parity в тестовой сети kovan можно было бы указать следующие параметры в файле configuration.nix:

```
services.parity.enable = true;
services.parity.chain = "kovan";
services.parity.autoSign.enable = false;
```
