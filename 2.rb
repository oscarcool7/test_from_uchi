arr = [{a: 1, b: 2, c: 45}, {d: 123, c: 12}, {e: 87}]

# a) напишите выражение, которое получает массив всех ключей
arr.map { |hash| hash.keys }.flatten

# b) напишите выражение, которое получает массив всех значений
arr.map { |hash| hash.values }.flatten

# c) напишите выражение, которое получает сумму всех значений
arr.map { |hash| hash.values }.flatten.sum
