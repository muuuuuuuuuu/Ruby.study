オブジェクトの各要素に処理を加えて新しい配列を返す

array = [1,2,3].map do |i|
  i * 2
end

p array
[2, 4, 6]


配列の各要素を１０倍にした新しい配列を作る

numbers = [1,2,3,4,5]
new_numbers = numbers.map { |n| n * 10}
p new_numbers
[10, 20, 30, 40, 50]
