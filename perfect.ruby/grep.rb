要素を見つけ出す
puts %w(Alice Bob charlie).grep(/a/i)
Alice
charlie

puts ["a", "b", 3, 4].grep(String)
a
b
