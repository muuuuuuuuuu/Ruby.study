# hashの繰り返し
# hash = {a: 1, b: 2}
# hash.each do |key, val|
#   print "#{key}:#{val}"
# end
# a:1b:2

# hash = {a: 1, b: 2}
# hash.each_key do |key|
#   print key
# end
# ab
# keyだけを繰り返す

# hash = {a: 1, b: 2}
# hash.each_value do |key|
#   print key
# end
# 12
# 値だけを繰り返す

# hash = {}
# hash[:foo] = "bar"
# print hash
# hashに追加
 # -------------------------------------------
 # splitメソッドを使って空白スペースで入力出来る様にします
 a = gets.chomp.split(" ")
 b = gets.chomp.split(" ")
 c = gets.chomp.split(" ")

 # そしてmapメソッドを使って配列の文字列を数値にします
 aa = a.map(&:to_i)
 bb = b.map(&:to_i)
 cc = c.map(&:to_i)
 # aa[170, 60]
 # bb[180, 70]
 # cc[160, 50]
 # ↑それぞれ今この様な配列になっているから
 # これをhashにします

 h = { "A" => aa[0], "B" => bb[0], "C" => cc[0]}
 w = { "A" => aa[1], "B" => bb[1], "C" => cc[1]}
 #こんな感じになる
 # h = { "A" => 170, "B" => 180, "C" => 160}
 # w = { "A" => 60, "B" => 70, "C" => 50}

 # 次にsortメソッドを使ってhashの値を高いもん順にならべかえる
 # 身長の高い順
 hh = h.sort { |(key1, val1),(key2, val2)| val2 <=> val1 }
 # こんな感じ[["B", 180], ["A", 170], ["C", 160]]

 # 次は体重の軽い順にsortする
 ww = w.sort { |(key1, val1),(key2, val2)| val1 <=> val2 }
 # こんな感じ[["C", 50], ["A", 60], ["B", 70]]

 # 体重よりも身長の方が優れている優先度が高いから
 # 身長が高い人に点数を多く与えてあげる
 # eachメソッドを使って1位の人に30点をあげる
 # そしてそこから身長が低くなるにつれて点数を
 # 10点ずつ低くする計算式を作る

 #lankにはまず1位の人に30点を上げたいから30を代入して上げます
 lank = 30
 #previousには前回の人の値が入る
 #けど最初の人は前回の人がいないから初期値として
 #0を入れといて上げます
 previous = 0
 score = {"A" => 0, "B" => 0, "C" => 0}
 hh.each { |key, val|
   if previous > val then
   # if文がfalseになる様に0を入れておく
   lank -= 10
   # 前回より小さいならlank(点数)を下げる
   # 最初は30点入っている
   end
   previous = val
   score[key] = lank
 }

# 150
# 140
# 150
# {"A"=>30, "B"=>20, "C"=>30}

lank2 = 4
#previousには前回の人の値が入る
#けど最初の人は前回の人がいないから初期値として
#0を入れといて上げます
previous2 = 0
score2 = {"A" => 0, "B" => 0, "C" => 0}
ww.each { |key, val|
  if previous2 < val then
  # if文がfalseになる様に0を入れておく
  lank2 -= 1
  # 前回より小さいならlank(点数)を下げる
  # 最初は30点入っている
  end
  previous2 = val
  score2[key] = lank2
}
# h1 = {a:1, b:2}
# h2 = {b:3, c:4}
# p h1.merge(h2){|key, v0, v1|
#   v0 + v1 # キーが重複していた場合は2つの値を加算する
# } #=> {:a=>1, :b=>5, :c=>4}
score3 = score.merge(score2){|key, v0, v1|
                              v0 + v1
                             }
score4 = score3.sort { |(key1, val1),(key2, val2)| val2 <=> val1 }
# [["C", 31], ["A", 22], ["B", 13]]
puts score4[0][0]
puts score4[1][0]
puts score4[2][0]
