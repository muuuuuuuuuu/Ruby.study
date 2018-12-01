・indexは文字列の指定の数値を探す

c = "ABCDEFGHIJKLM"
cc = c.chars
↓
["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"]

a = gets.chomp
↓
L
b = c.index(a)
p b
↓
11
-------------------------------------------------------
