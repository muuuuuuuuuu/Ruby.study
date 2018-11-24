%w(1 2 3).each do |i|
  puts i
end
1
2
3

{height: 170, weight: 60}.each do |element|
  p element
end
[:height, 170]
[:weight, 60]

{height: 170, weight: 60}.each do |key, value|
  p key
  p value
end
:height
170
:weight
60

ブロックを省略したやり方
{height: 170, weight: 60}.each { |i| p i }
[:height, 170]
[:weight, 60]

これも省略したやり方
{height: 170, weight: 60}.each { |key, value| p key,value }
:height
170
:weight
60


値を10倍にしてから加算するコード
numbers = [1,2,3,4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum
64

numbers = [1,2,3,4,5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10}
p new_numbers
[10, 20, 30, 40, 50]
