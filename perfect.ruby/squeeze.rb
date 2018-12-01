・同じ要素をまとめる
puts 'woooooooooooooo'.squeeze
puts 'aaabbbccccccdd'.squeeze('abc')
puts 'aaabbbccccccdd'.squeeze('a-c')
↓
wo
abcdd
abcdd
------------------------------------------------
