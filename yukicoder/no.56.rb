ある国の通貨単位は「ユキコダ」である。
いまから𝐷ユキコダの品物を買おうとしている？
しかし、品物の金額に対して消費税率𝑃%の消費税が加算される。
実際に支払う金額はいくらか？
ただし、小数点以下は切り捨てします。

input = gets.chomp.split(' ')
D = input[0].to_f
小数点をつけて上げる
P = input[1].to_f
小数点をつけて上げる
puts (((100 + P) * D) / 100).floor
最初に整数で金額を出してから100で割ると
誤差が出にくくなる
--------------------------------------------------
require 'bigdecimal'
少数を含む金額の計算はBigDecimalを使う
a = gets.chomp.split(" ")
b = 1.0 + a[1].to_i / 100.0
c = b.round(2)
小数点第二位を四捨五入する
d = c.to_s
p d
p (BigDecimal(a[0]) * BigDecimal(d)).floor
--------------------------------------------------
a = gets.chomp.split(" ")
b = 1.0 + a[1].to_i / 100.0
c = b.to_s

p (Rational(a[0]) * Rational(c)).floor
