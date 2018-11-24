条件に応じて処理を繰り返す
指定した条件が真である間、処理を繰り返す。
a = 0

while(a < 10) do
  p a
  a += 1
end
0
1
2
3
4
5
6
7
8
9

a = 0

while(true) do
  p a
  a += 1
  break if a > 9
end
0
1
2
3
4
5
6
7
8
9
