#1
int_item = 10
#2
comp_item = 18
#3
mult_int = int_item * 2
#4
item_2 = True
#5
item_3 = False
#6
item_4 = 0
#7
item_5 = 1
#8
usd_item = 'usd'
#9
usd_usd_rate = 1
#10
eur_item = 'eur'
#11
usd_eur_rate = 0.86
#12
uah_item = 'uah'
#13
usd_uah_rate = 26.25
#14
chf_item = 'chf'
#15
usd_chf_rate = 0.91
#16
rub_item = 'rub'
#17
usd_rub_rate = 71.48
#18
byn_item = 'byn'
#19
usd_byn_rate = 2.46
#20
if mult_int > comp_item:
    print("Переменная mult_int больше", comp_item)
#21
div_int = int_item / 2
#22
if div_int < comp_item:
    print("Переменная div_int меньше", comp_item)
#23
item_1 = int_item + 10
#24
if item_1 < comp_item:
    print("Переменная item_1 меньше", comp_item)
else:
    print("Переменная item_1 больше или равна", comp_item)
#25
if item_2:
    print("Переменная item_2 = ", item_2)
else:
    print("Переменная item_2 = ", item_3)
#26
if item_3:
    print("Переменная item_3 = ", item_2)
else:
    print("Переменная item_3 = ", item_3)
#27
if item_5:
    print("Переменная item_5 = ", item_5)
else:
    print("Переменная item_5 = ", item_4)
#28
if item_4:
    print("Переменная item_4 = ", item_5)
else:
    print("Переменная item_4 = ", item_4)
#29
currency_convertor = item_2
#30 - 31.7
if currency_convertor:
    currency_usd = usd_item
    target_currency = rub_item
    target_currency_amount = 50

    if target_currency == 'eur':
        currency_result = target_currency_amount / usd_eur_rate
        print(target_currency_amount, eur_item, "=", currency_result, usd_item)
    elif target_currency == 'uah':
        currency_result = target_currency_amount / usd_uah_rate
        print(target_currency_amount, eur_item, "=", currency_result, usd_item)
    elif target_currency == 'usd':
        currency_result = target_currency_amount / usd_usd_rate
        print(target_currency_amount, usd_item, "=", currency_result, usd_item)
    elif target_currency == 'chf':
        currency_result = target_currency_amount / usd_chf_rate
        print(target_currency_amount, chf_item, "=", currency_result, usd_item)
    elif target_currency == 'rub':
        currency_result = target_currency_amount / usd_rub_rate
        print(target_currency_amount, rub_item, "=", currency_result, usd_item)
    elif target_currency == 'byn':
        currency_result = target_currency_amount / usd_byn_rate
        print(target_currency_amount, byn_item, "=", currency_result, usd_item)
    else:
        print("Unknow currency")
else:
    print("Переменная currency_convertor = ", item_3)