name = 'Toliya'
print(type(name), (name))

age = 32
print(type(age), (age))

temperature = 36.6
print(type(temperature), (temperature))

male = True
print(type(male), (male))
female = False
print(type(female), (female))

b_age = bytes(32)
print(type(b_age), (b_age))

full_name = ['Cheburov', 'Anatoliy', 'Vladimirovich', [32]]
print(type(full_name), (full_name))
print(full_name[3])

Date_of_Birth = (1989, 'June', 4)
print(type(Date_of_Birth), (Date_of_Birth))

set_d = {1, 2, 3, 4, 1, 2, 3}
print(type(set_d), (set_d))         #отсутствуют повторяющиеся значения

frozen_full_name = frozenset({'Anatoliy', 'Vladimirovich', 'Cheburov'})
print(type(frozen_full_name), (frozen_full_name))          #не может быть изменено

dict_Toliya = {"age":32,
               'town':'Ulanovsk'}
print(type(dict_Toliya), (dict_Toliya))

Name = 'Toliya'
surname = 'Cheburov'
print(Name + surname)              #конкатенация
print(Name, surname, sep='_')      #конкатенация

print(name, age)

print(name + str(age))