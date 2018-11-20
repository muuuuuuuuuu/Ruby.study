a = [5,2,7,8,1,9]
print a.reject {|v| v.even? }
[5, 7, 1, 9]
偶数を指定しているがrejectだから奇数がとり出される
