・deleteメソッドは、引数で指定した文字を文字列の中から削除し、
  新しい文字列を返します。
  引数の指定のしかたはcountメソッドと同じです。

s = "hello, world"
puts s.delete("l")
↓
heo, word
-------------------------------------------------
・正規表現で文字列の中から数字だけを取り出す
a = "gj9ut986u1@"
a.delete("^0-9")
↓
99861
---------------------------------------------------