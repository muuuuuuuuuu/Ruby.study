・bsearchはある数値以上の最初の要素を探し出す
a = [1,3,5,7,9]
print a.bsearch { |n| n > 5}
↓
7
ある数値以上がない時はnilを返す
-----------------------------------------------------
