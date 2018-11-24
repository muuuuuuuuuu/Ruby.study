puts "今は何月ですか？"
month = gets.to_i
if month == 11
  puts "正解です"
else
  puts "違うわぼけ！！"
end

--------------------------------

n = gets.to_i

if n == 1
  puts "6"
elsif n == 6
  puts "1"
elsif n == 2
  puts "5"
elsif n == 5
  puts "2"
elsif n == 3
  puts "4"
else
  puts "3"
end

--------------------------------------
差額を求める

a = "1000000007"
c = a.length
#cは数値
b = gets.chomp
d = b.length
#dも数値
if c < d
  p d - c
else
  p c - d
end
