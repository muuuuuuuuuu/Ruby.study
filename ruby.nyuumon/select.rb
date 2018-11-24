条件に一致するものを集めて新しい配列を返す

array = [1,2,3,4,5,6,7,8].select do |i|
  i % 2 == 0
end
p array
[2, 4, 6, 8]


偶数の数値だけを集めた配列を集めた配列を新たに作る

numbers = [1,2,3,4,5,6]
even_numbers = numbers.select { |n| n.even? }
p even_numbers
[2, 4, 6]
