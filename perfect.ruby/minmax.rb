a = (1..45)
puts a.max
puts a.min
print a.minmax
↓
45
1
[1,45]

a = %w(aaa vvvvvvv dd)
puts a.max_by{|s| s.length}
puts a.min_by{|s| s.length}
print a.minmax_by{|s| s.length}
↓
vvvvvvv
dd
["dd", "vvvvvvv"]
-----------------------------------------------
