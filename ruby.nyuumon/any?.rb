・any?は一つでもtrueが含まれていたらtrueを返す
p [false, false, false].any?
p [false, false, true].any?
↓
false
true
-----------------------------------------------------
