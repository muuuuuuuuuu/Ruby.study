#スペースを空けて入力する
a = gets.chomp.split(" ")
b = gets.chomp.split(" ")
c = gets.chomp.split(" ")
#配列の文字列を数値にする
aa = a.map(&:to_i)
bb = b.map(&:to_i)
cc = c.map(&:to_i)

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

if (aa[0] > bb[0] && bb[0] > cc[0])
  if (aa[0] == bb[0] || bb[0] == cc[0] || aa[0] == cc[0])
  else(cc[1] >= bb[1] && bb[1] >= aa[1]) || (bb[1] >= cc[1] && cc[1] >= aa[1])
      puts "ABC"
  end
end
if (aa[0] > cc[0] || cc[0] > bb[0])
  if (aa[0] == cc[0] || cc[0] == bb[0] || aa[0] == bb[0])
  else(bb[1] >= cc[1] && cc[1] >= aa[1]) || (cc[1] >= bb[1] && bb[1] >= aa[1])
      puts "ACB"
  end
end
if (bb[0] > aa[0] && aa[0] > cc[0])
  if (bb[0] == aa[0] || aa[0] == cc[0] || bb[0] || cc[0])
  else(cc[1] >= aa[1] && aa[1] >= bb[1]) || (aa[1] >= cc[1] && cc[1] >= bb[1])
      puts "BAC"
  end
end
if (bb[0] > cc[0] && cc[0] > aa[0])
  if (bb[0] == cc[0] || cc[0] == aa[0] || bb[0] == aa[0])
  else(aa[1] >= cc[1] && cc[1] >= bb[1]) || (cc[1] >= aa[1] && aa[1] >= bb[1])
      puts "BCA"
  end
end
if (cc[0] > aa[0] && aa[0] > bb[0])
  if (cc[0] == aa[0] || aa[0] == bb[0] || cc[0] == bb[0])
  else(bb[1] >= aa[1] && aa[1] >= cc[1]) || (aa[1] >= bb[1] && bb[1] >= cc[1])
      puts "CAB"
  end
end
if (cc[0] > bb[0] && bb[0] > aa[0])
  if (cc[0] == bb[0] && bb[0] == aa[0])
  else(aa[1] >= bb[1] && bb[1] >= cc[1]) || (bb[1] >= aa[1] && aa[1] >= cc[1])
      puts "CBA"
  end
end
