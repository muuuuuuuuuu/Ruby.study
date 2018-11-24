#スペースを空けて入力する
# a = gets.chomp.split(" ")
# b = gets.chomp.split(" ")
# c = gets.chomp.split(" ")
#配列の文字列を数値にする
# aa = a.map(&:to_i)
# bb = b.map(&:to_i)
# cc = c.map(&:to_i)

# if aa[0] > bb[0] > cc[0] && cc[1] > bb[1] > aa[1]
# puts "ABC"
# end
#この様に実行したら
#Traceback (most recent call last):
# class.object.rb:10:in `<main>': undefined method `>' for true:True
# Class (NoMethodError)
#恐らく最初にaa[0] > bb[0]の時点でtrueになって
 # 後の式もtrueに解決で解決してしまうっぽい
# if (aa[0] >= bb[0] && bb[0] >= cc[0]) && (cc[1] >= bb[1] && bb[1] >= aa[1]) || (bb[1] >= cc[1] && cc[1] >= aa[1])
#   puts "A\nB\nC"
# elsif (aa[0] >= cc[0] && cc[0] >= bb[0]) && (bb[1] >= cc[1] && cc[1] >= aa[1]) || (cc[1] >= bb[1] && bb[1] >= aa[1])
#   puts "A\nC\nB"
# elsif (bb[0] >= aa[0] && aa[0] >= cc[0]) && (cc[1] >= aa[1] && aa[1] >= bb[1]) || (aa[1] >= cc[1] && cc[1] >= bb[1])
#   puts "B\nA\nC"
# elsif (bb[0] >= cc[0] && cc[0] >= aa[0]) && (aa[1] >= cc[1] && cc[1] >= bb[1]) || (cc[1] >= aa[1] && aa[1] >= bb[1])
#   puts "B\nC\nA"
# elsif (cc[0] >= aa[0] && aa[0] >= bb[0]) && (bb[1] >= aa[1] && aa[1] >= cc[1]) || (aa[1] >= bb[1] && bb[1] >= cc[1])
#   puts "C\nA\nB"
# elsif (cc[0] >= bb[0] && bb[0] >= aa[0]) && (aa[1] >= bb[1] && bb[1] >= cc[1]) || (bb[1] >= aa[1] && aa[1] >= cc[1])
#   puts "C\nB\nA"
# else
#   puts "ダメ"
# end

# if (aa[0] > bb[0] && bb[0] > cc[0])
#   if (aa[0] == bb[0] || bb[0] == cc[0] || aa[0] == cc[0])
#   else(cc[1] >= bb[1] && bb[1] >= aa[1]) || (bb[1] >= cc[1] && cc[1] >= aa[1])
#       puts "ABC"
#   end
# end
# if (aa[0] > cc[0] || cc[0] > bb[0])
#   if (aa[0] == cc[0] || cc[0] == bb[0] || aa[0] == bb[0])
#   else(bb[1] >= cc[1] && cc[1] >= aa[1]) || (cc[1] >= bb[1] && bb[1] >= aa[1])
#       puts "ACB"
#   end
# end
# if (bb[0] > aa[0] && aa[0] > cc[0])
#   if (bb[0] == aa[0] || aa[0] == cc[0] || bb[0] || cc[0])
#   else(cc[1] >= aa[1] && aa[1] >= bb[1]) || (aa[1] >= cc[1] && cc[1] >= bb[1])
#       puts "BAC"
#   end
# end
# if (bb[0] > cc[0] && cc[0] > aa[0])
#   if (bb[0] == cc[0] || cc[0] == aa[0] || bb[0] == aa[0])
#   else(aa[1] >= cc[1] && cc[1] >= bb[1]) || (cc[1] >= aa[1] && aa[1] >= bb[1])
#       puts "BCA"
#   end
# end
# if (cc[0] > aa[0] && aa[0] > bb[0])
#   if (cc[0] == aa[0] || aa[0] == bb[0] || cc[0] == bb[0])
#   else(bb[1] >= aa[1] && aa[1] >= cc[1]) || (aa[1] >= bb[1] && bb[1] >= cc[1])
#       puts "CAB"
#   end
# end
# if (cc[0] > bb[0] && bb[0] > aa[0])
#   if (cc[0] == bb[0] && bb[0] == aa[0])
#   else(aa[1] >= bb[1] && bb[1] >= cc[1]) || (bb[1] >= aa[1] && aa[1] >= cc[1])
#       puts "CBA"
#   end
# end



a = gets.chomp.split(" ")
b = gets.chomp.split(" ")
c = gets.chomp.split(" ")
# 配列の文字列を数値にする
aa = a.map(&:to_i)
bb = b.map(&:to_i)
cc = c.map(&:to_i)

d = aa + bb + cc
e = d.sort
p e
# 180 90
# 170 60
# 170 190
#   class Keisan
#     def tai(e)
#       if (e[0] == e[1] && e[0] == e[2] && e[1] == e[2])
#         p e[0..2] = 3
#       elsif e[0] == e[1]
#         p e[0..1] = 3
#         p e[2] = 2
#       elsif e[1] == e[2]
#         p e[0] = 3
#         p e[1..2] = 2
#       else
#         p e[0] = 3
#         p e[1] = 2
#         p e[2] = 1
#       end
#     end
#
#     def height(e)
#       if (e[3] == e[4] && e[3] == e[5] && e[4] == e[5])
#         p e[3..5] = 3 * 10
#       elsif e[3] == e[4]
#         p e[3..4] = 2 * 10
#         p e[5] = 3 * 10
#       elsif e[4] == e[5]
#         p e[3] = 2 * 10
#         p e[4..5] = 3 * 10
#       else
#         p e[3] = 1 * 10
#         p e[4] = 2 * 10
#         p e[5] = 3 * 10
#       end
#     end
#   end
# f = Keisan.new
# p f.tai(e)
# p f.height(e)
