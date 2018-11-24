配列を使わずに、単純にn回処理を繰り返したい時

10.times do |i|
  p i
end
上と下は一緒の出力になる
10.times {|i| p i}
