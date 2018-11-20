# ass
#   def hello
#     puts "sayho"
#   end
# end
#
# a = MyClass.new
# a.hello
# sayho
# ------------------------------
# class Ruler
#   def length=(val)
#     @length = val
#   end
#
#   def length
#     @length
#   end
# end
#
# ruler = Ruler.new
#
# ruler.length = 30
# puts ruler.length
# 30

# 上の分は実際にインスタンス変数にアクセスするメソッドが欲しい場合は
# attr_accessorを用いる。下はその例。一緒の答えになる。

# class Ruler
#   attr_accessor :length
# end
#
# a = Ruler.new
# a = 30
# puts a
# ----------------------------------
# class継承

# class Parent
#   def hello
#     puts "hello hello"
#   end
# end
#
# class Child < Parent
#   def hi
#     puts "hayhi"
#   end
# end
#
# a = Child.new
# p a.hello
# hello hello
# p a.hi
# hayhi
# -------------------------------------
# 特異メソッド
# class Foo
# end
#
# foo = Foo.new
# bar = Foo.new
#
# # barだけにメソッドを定義する
# def bar.sole_method
#   puts "Called!"
# end
# #sole_methodはbarに対してだけ呼べる
# puts bar.sole_method
# Called!
# -----------------------------------------
