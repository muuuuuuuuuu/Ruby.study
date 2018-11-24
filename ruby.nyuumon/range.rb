1から5までとか"a"から"d"までとかの範囲を表すオブジェクト

a = [1,2,3,4,5]
p a[1..3]
p a[1...3]
[2, 3, 4]
[2, 3]

n以上m以下、n以上m未満の判定をしたい場合は<や>=（不等号）を使うよ
# りも範囲オブジェクトを使った方がシンプルに書けます

def liquid?(temperature)
  (0...100).include?(temperature)
end

p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)
false
true
true
false

値が連続する配列を作成する

p (1..5).to_a
p (1...5).to_a
p ('a'..'e').to_a
p ('a'...'e').to_a
p ('bad'..'bag').to_a
p ('bad'...'bag').to_a
[1, 2, 3, 4, 5]
[1, 2, 3, 4]
["a", "b", "c", "d", "e"]
["a", "b", "c", "d"]
["bad", "bae", "baf", "bag"]
["bad", "bae", "baf"]
