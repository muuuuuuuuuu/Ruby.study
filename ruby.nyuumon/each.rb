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
