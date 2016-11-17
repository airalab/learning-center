# Урок 10 в Ethereum Wallet

В этом уроке мы создадим несколько допольнительных ценностей для вашей организации и выставим их на рынок.

Добавим в реестр контрактов организации `Token emission builder`. Найдем сборщик `Aira BuilderTokenEmission` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderTokenEmission` в реестр контрактов вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Указываем:

    наименование - BuilderTokenEmission
    module - адрес модуля
    interface - ссылку github://airalab/core/builder/BuilderTokenEmission.sol

![Screenshot 63](/img/Screenshot_63.png)

Создадим 4 новых токена, используя функцию `Create` в контракте `Aira BuilderTokenEmission`.

При обращении к сборщику необходимо указать:

    наименование токена
    символ токена
    кол-во знаков после запятой - 0
    размер первоначальной эмиссии - 100

Создадим: Asset 1(A1), Asset 2(A2), Service1(S1), Service2(S2).

![Screenshot 64](/img/Screenshot_64.png)

Не забудьте отправить немного Eth сборщику, его работа стоит 0.01 Eth.

Добавим эти ценности в список наблюдаемых токенов. Адреса найдем в `Latest Events` контракта `Aira BuilderTokenEmission`.

![Screenshot 65](/img/Screenshot_65.png)

Добавим эти ценности в реестр модулей вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Подробнее было описано выше. Выполните самостоятельно.

>interface - ссылку github://airalab/core/builder/TokenEmission.sol

Теперь добавим лоты с этими ценностями на рынок. Делаем это через `Market Regulator`, т.к. он сейчас управляет модулем `Market`. Используем функцию `Buy` или `Sale`.

При обращении указываем:

    Адрес ценности
    Кол-во покупаемой\продаваемой ценности
    Цену в `Credits`

![Screenshot 66](/img/Screenshot_66.png)

Добавьте по одному лоту для каждой ценности.

## Завершение урока

Чтобы завершить урок, необходимо обратиться к контракту `Lesson 10` для вызова функции `Execute`, передав адрес контракта `Market`.
Address Lesson 10 - `0x68d7e63b5495b00aC3a52b9a138B2a8bC457760d`  
Abi:
```js
[{"constant":false,"inputs":[{"name":"_air","type":"address"}],"name":"setToken","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"reward","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"air","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_reward","type":"uint256"}],"name":"setReward","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_market","type":"address"}],"name":"execute","outputs":[],"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":true,"inputs":[{"name":"","type":"address"}],"name":"isPassed","outputs":[{"name":"","type":"bool"}],"type":"function"},{"inputs":[{"name":"_air","type":"address"},{"name":"_reward","type":"uint256"}],"type":"constructor"}]

```  
Выполните самостоятельно. Если всё сделано правильно, вы получите 100 Air.
