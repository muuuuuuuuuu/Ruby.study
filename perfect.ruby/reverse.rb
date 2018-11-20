str = "abcde"
puts str.reverse
puts str
edcba
abcde

str = "abcde"
puts str.reverse!
puts str
edcba
edcba
!は破壊的だからstrが更新される！
# -----------------------------------------------
