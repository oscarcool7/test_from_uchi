# a) Напишите функцию, которая имитирует работу светафора. На вход она получает один из цветов в виде строки
# ("red", "green", "yellow" ), на выходе будет результат (идти, стоять или ждать)
def traffic_lights(color)
  case color
  when "red" then "Стойте!"
  when "yellow" then "Ждите!"
  when "green" then "Идите!"
  else "У сигнала светофора такого цвета нет!"
  end
end

# b) напишите это в виде консольной программы, которая не прекращает работу после однократного вызова,
# а ждет следующих запросов
while true
  puts "Введите цвет сигнала светофора:"
  color = $stdin.gets.chomp

  puts traffic_lights(color)
end

# c) напишите обработку некорректных данных и добавьте возможность юзеру завершить работу программы
color = ""

while true
  puts "Введите цвет сигнала светофора (для выхода из программы нажмите 0):"
  color = $stdin.gets.downcase.chomp

  if color == "0"
    abort "Вы вышли из программы"
  end

  puts traffic_lights(color)
end
