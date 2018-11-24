要素を挿入する
y = gets.split(" ")

y.insert(1,"/")
y.insert(3,"/")

print y[0]
print y[1]
print y[2]
print y[3]
print y[4]
print y[5]
1234/5/6
-----------------------------------------
顔文字を作る

a = gets.chomp
b = gets.chomp
c = ["(", ")", "/"]
c.insert(1,a,b,a)

puts c.join
