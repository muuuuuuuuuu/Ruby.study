オブジェクトの各要素に処理を加えて新しい配列を返す

array = [1,2,3].map do |i|
  i * 2
end

p array
[2, 4, 6]
