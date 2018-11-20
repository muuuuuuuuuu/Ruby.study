str = 'The Answer to life, the universe, and everything: 42'
puts str.slice(4)
puts str.slice(4,6)
puts str.slice(4..9)
puts str.slice(/[0-9]+/)
puts str.slice(-2,2)
A(位置を指定)
Answer(ある範囲の文字列を開始位置と取得文字数で指定)
Answer(ある範囲の文字列を範囲で指定)
42(正規表現で指定)
42(位置を指定)
----------------------------------------------
