%wで配列を作れる
animals = %w(dog cat mouse)
p animals
["dog", "cat", "mouse"]

%iでシンボルの配列を作れる
animals = %i(dog cat mouse)
p animals
[:dog, :cat, :mouse]

%Wは式展開版
a = %W(#{1 + 1} #{2 + 2})
p a
["2", "4"]

%Iも式展開版
a = %I(#{"a" + "b"} #{"c" + "d"})
p a
[:ab, :cd]

配列に初期値を設定する
p Array.new(5)
p Array.new(5, 0)


[nil, nil, nil, nil, nil]
