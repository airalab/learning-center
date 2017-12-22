## Покупка/продажа данных

Генерация предложения на рынок сенсоров (на стороне робота):
`$ rosservice call /market/gen_bids "{a: 0, k: 1, market: 'QmWboFP8XeBtFMbNYK3Ne8Z3gKFBSR5iQzkKgeNgQz3dz4', fee: 5, price_range: 50}"`

Генерация спроса на стороне клиента
`$ rosservice call /market/gen_asks "{a: 10, k: 1, market: 'QmWboFP8XeBtFMbNYK3Ne8Z3gKFBSR5iQzkKgeNgQz3dz4', objective: QmNnmP5dpYgTeciGGkrdTRkyxEgWL2iajf1oCkVJmYQrFG, fee: 5, price_range: 50}"`

Если matcher находит совпадение, генерируется транзакция обязательства. Когда робот (RaspberryPi) опубликует все данные в сеть IPFS, результат будет записан в блокчейн. Получив IPFS hash из смарт-контракта, скачиваем данные себе.
