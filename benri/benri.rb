・正規表現で文字列の中から数字だけを取り出す
a = "gj9ut986u1@"
a.delete("^0-9")
↓
99861
-----------------------------------------------
・正規表現で文字列の置き換え
a = gets.chomp
↓
AWBWCWDWEWFWGWH
puts a.gsub(/[AEGIOSZ]/,"A" => "a", "B" => "b",
                       "C" => "c", "D" => "d", "F" => "f",
                       "G" => "g", "H" => "h")
↓
aWBWCWDWWFWgWH
[AEGIOSZ]←はこの中で当てはまるものだけって事
-----------------------------------------------
・正規表現で文字列の置き換え
a = gets.chomp
↓
nakamurakatsuyanakamurakatsuya
puts a.gsub(/(ka)/, "///")
↓
na///mura///tsuyana///mura///tsuya
-----------------------------------------------
・文字列になっている数字を数値に変換する
a = [”9”, ”9”, ”8”, ”6”, ”1”]
a.map(&:to_i)
↓
[9, 9, 8, 6, 1]
-----------------------------------------------
・配列に入っている数値の合計を求める
a = [9, 9, 8, 6, 1]
a.inject(:+)
↓
33
-----------------------------------------------
・消費税を計算する１
input = gets.chomp.split(' ')
D = input[0].to_f
小数点をつけて上げる
P = input[1].to_f
小数点をつけて上げる
puts (((100 + P) * D) / 100).floor
最初に整数で金額を出してから100で割ると
誤差が出にくくなる
-----------------------
・消費税を計算する２
require 'bigdecimal'
少数を含む金額の計算はBigDecimalを使う
a = gets.chomp.split(" ")
b = 1.0 + a[1].to_i / 100.0
c = b.round(2)
小数点第二位を四捨五入する
d = c.to_s
p (BigDecimal(a[0]) * BigDecimal(d)).floor
------------------------
・消費税を計算する３
a = gets.chomp.split(" ")
b = 1.0 + a[1].to_i / 100.0
c = b.to_s
p (Rational(a[0]) * Rational(c)).floor
------------------------------------------------
・配列の要素を半角スペース区切りで出力する
・1次元配列の場合
array = ["aaa", "bbb", "ccc"]
puts array.join(' ')
↓
aaa bbb ccc

・多次元配列の場合も一緒
array = ["aa", ["bb", "cc", ["dd", "ee"]], ["ff", "gg"]]
puts array.join(' ')
↓
aa bb cc dd ee ff gg
--------------------------------------------------
・絶対値を求める
a = gets.chomp.to_i
↓
-1 -98 5
p a.abs
↓
1 98 5
--------------------------------------------------
・入力した数値を1から順番に足していった式
a = gets.chomp.to_i
↓
3   10   99
b = a + 1
↓
4   11   100
p b * a / 2
↓
6   55   4950
下のも一緒
---------------------------------------------------
・入力した数値を1から順番に足していった式
sum = 99

99.times { |n| sum += n }
p sum
↓
4950
----------------------------------------------------
・出力する時に空白スペースを空けて出力したい
a = 1
b = 2
puts "#{a}" + (" ") + "#{b}"
↓
1 2
-----------------------------------------------------
・０埋め
a = gets.chomp.to_i
↓
55
puts sprintf("%03d", aa)
↓
055
０の数は("%03d", aa)の03の部分を変える
------------------------------------------------------
・１部分の文字正規表現で消す(破壊的)
a = "aaabbbcccddd"
puts a.gsub!(/ccc+/, '')
↓
aaabbbddd
------------------------------------------------------
・printで空白スペースで出力したい
print 'foo',
print 123,
print 'bar'
↓
foo 123 bar
------------------------------------------------------
・繰り返し処理で横に出力したい時
はprintメソッドを使う。
そして空白を空けたい時は(i,(' '))
な書き方にする。
1.upto 5 do |i|
  print(i,(' '))
end
↓
1 2 3 4 5　

けどこの時,5の横に空白がある状態
空白がない様に出力したい時は

1.upto 4 do |i|
  print(i,(' '))
end
5.upto 5 do |i|
  print i
end
↓
1 2 3 4 5
の様にする！
----------------------------------------------------
・繰り返し処理で前後の空白などを消したりする書き方
input = gets.chomp.split(' ')
m = input[0].to_i
n = input[1].to_i
↓
4 4

sum = m
・最初は空白がいらないので、そのまま出力してOK
print sum
9.times do |i|
    sum += n
    print ' '
    ' '←で空白出力
    print sum
end
↓
4 8 12 16 20 24 28 32 36 40

・これは後ろの空白を無くしてる
a = gets.chomp.split(' ')
n, m = a.map(&:to_i)
sum = n - m
9.times do |i|
  sum += m
  print(sum,(' '))
end
print sum + m
↑のsumには繰り返し処理の最後の出力が挿入される
---------------------------------------------------
・配列のインデックス番号を全部取得したい時
ary = [5, 4, 1, 7, 3, 8]

p ary.each_with_index.select{|e, i| e >= 5}.map{|e| e[1]}
↓
[0, 3, 5]

他にも色々あるみたい、
ary.each_with_index.each_with_object([]){|(e, i), acc| acc << i if e >= 5}
[0, 3, 5]

ary.each_with_index.select{|e, i| e >= 5}.map{|e| e[1]}

ary.each_with_index.each_with_object([]){|(e, i), acc| acc << i if e >= 5}

ary.flat_map.with_index{|e,i|e>=5 ? i : []}
--------------------------------------------------
