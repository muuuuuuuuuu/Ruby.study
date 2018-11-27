mapメソッドは、要素の数だけ繰り返しブロックを実行し、
ブロックの戻り値を集めた配列を作成して返します。
collectメソッドの別名です。

a = %w(Alice Bob Carol)
puts a.map {|b| b.upcase}
↓
ALICE
BOB
CAROL
-------------------------------------------
・文字列になっている数字を数値に変換する
a = ["9", "9", "8", "6", "1"]
a.map(&:to_i)
文字列になっている数字を数値に変換する
出力例
↓
[9, 9, 8, 6, 1]
