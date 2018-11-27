添え字付きの繰り返し処理
with_indexはmapやeach以外にも使える

fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
0: apple
1: orange
2: melon

fruits = ['apple', 'orange', 'melon']
fruits.map.with_index { |fruit, i| puts "#{i}: #{fruit}" }
0: apple
1: orange
2: melon

fruits = ['apple', 'orange', 'melon']
fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
p fruits
["apple", "melon"]

添え字を０以外の数値から開始させる

fruits = ['apple', 'orange', 'melon']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
1: apple
2: orange
3: melon

[補足情報]
each_with_indexには引数は渡せないから
each.with_indexこのようにして引数を渡す
