配列
print %w(aaa bbb ccc)
["aaa", "bbb", "ccc"]

print %i(aaa bbb ccc)
[:aaa, :bbb, :ccc]

print %w(foo\ bar hoge\ piyo)
["foo bar", "hoge piyo"]
----------------------------------
print Array.new(5,1)
[1, 1, 1, 1, 1]

print Array.new(11) { |index| index.succ }
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

a = [4,4,3,2]
a[0] = 5
print a
[5, 4, 3, 2]

a = [4,4,3,2]
a[10] = 1
print a
[4, 4, 3, 2, nil, nil, nil, nil, nil, nil, 1]

a = [1,4,5,6]
a << 9
print a
[1, 4, 5, 6, 9]
a.push 3
print a
[1, 4, 5, 6, 9, 3]
