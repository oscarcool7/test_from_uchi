# Так же есть таблица parents
# id int
# name varchar
# created_at datetime

# a) посчитайте количество студентов с родителями
SELECT COUNT(*) FROM students WHERE parent_id IS NOT NULL;

# b) посчитайте количество студентов с родителями при том что имя родителя Марина
SELECT COUNT(*) FROM students INNER JOIN parents ON students.parent_id = parents.id WHERE parents.name = 'Марина';

# c) посчитайте количество студентов без родителя
SELECT COUNT(*) FROM students WHERE parent_id IS NULL;
