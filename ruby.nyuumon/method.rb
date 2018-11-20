# メソッドを定義して見よう
#
# def calc_triangle_area(base, height)
#   base * height / 2
# end
#
# p calc_triangle_area(10, 5)
# 25
#
# def calc_triangle_area(base, height)
#   base * height / 2
# end
#
# base = 10
# height = 5
#
# p calc_triangle_area(base, height)
# 25

# 特殊な引数のメソッドを定義して呼び出そう
# tax_rate = 0.08はデフォルト値

# def calc_tax(price, tax_rate = 0.08)
#   tax = (price * tax_rate).to_i
#   tax_include = price + tax
#   { tax: tax, tax_include: tax_include }
# end
#
# p calc_tax(100, 0.1)
# p calc_tax(100)
# {:tax=>10, :tax_include=>110}
# {:tax=>8, :tax_include=>108}

# def calc_tax(price, tax_rate: 0.08)
#   tax = (price * tax_rate).to_i
#   tax_include = price + tax
#   { tax: tax, tax_include: tax_include }
# end
#
# p calc_tax(100, tax_rate: 0.1)
# p calc_tax(100)
# {:tax=>10, :tax_include=>110}
# {:tax=>8, :tax_include=>
#
# 割り勘計算プログラム

# def warikan(price, count = 2)
#   warikan_price = price / count
#   warikan_price += 1 unless price % count == 0
#   oturi = warikan_price * count - price
#   [warikan_price, oturi]
# end
#
# p warikan(5000)
# p warikan(5000, 3)
# p warikan(67832, 8)
# [2500, 0]
# [1667, 1]
# [8479, 0] 1人8479円って感じ
