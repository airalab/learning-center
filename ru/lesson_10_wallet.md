# Урок 10 в Ethereum Wallet

В этом уроке мы создадим несколько допольнительных ценностей для вашей организации и выставим их на рынок.

Добавим в реестр контрактов организации `Token emission builder`. Найдем сборщик `Aira BuilderTokenEmission` в контракте `Factory Core`. Как это сделать было рассмотрено в предыдущих уроках.

Далее, добавим сборщик `Aira BuilderTokenEmission` в реестр контрактов вашего DAO. Для этого откроем контракт `DAO Core` (в уроке 1 мы его создали как `My Test DAO`). Выберем функцию `Set Module`. Указываем:

    наименование - BuilderTokenEmission
    адрес модуля
    Abi - github://airalab/core/builder/BuilderTokenEmission.sol

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

>Abi - github://airalab/core/builder/TokenEmission.sol

Теперь добавим лоты с этими ценностями на рынок. Делаем это через `Market Regulator`, т.к. он сейчас управляет модулем `Market`. Используем функцию `Buy` или `Sale`.

При обращении указываем:

    Адрес ценности
    Кол-во покупаемой\продаваемой ценности
    Цену в `Credits`

![Screenshot 66](/img/Screenshot_66.png)

Добавьте по одному лоту для каждой ценности.

## Завершение урока (TO DO)
