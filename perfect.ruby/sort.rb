sortメソッドは、配列の要素をソートした新しい配列を返します。
要素の順序の比較には<=>演算子が使われ、
「要素1 <=> 要素2」の結果が-1なら要素1が先、
0なら同じ、1なら要素2が先となります

numbers = [7, 2, 4, 9, 10, 1, 5, 8, 6, 3]
p numbers.sort
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a = %w(Bob Alice Charlie)
print a.sort
["Alice", "Bob", "Charlie"]

print a.sort_by { |name| name.length }
["Bob", "Alice", "Charlie"]
