a = gets.chomp.split(" ")
b = gets.chomp.split(" ")
c = gets.chomp.split(" ")
#配列の文字列を数値にする
 a.map(&:to_i)
 b.map(&:to_i)
 c.map(&:to_i)

class Blother
  def height
