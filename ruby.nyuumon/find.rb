・findメソッドはブロックの戻り値が真になった最初の要素を返す

numbers = [1,2,3,4,5]
even_numbers = numbers.find { |n| n.even? }
p even_numbers
↓
2
-------------------------------------------------------------
