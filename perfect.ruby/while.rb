whileは繰り返し
lang = %w(Perl Python Ruby)
i = 0

while i < lang.length
  puts "hello, #{lang[i]}."
  i += 1
end

hello, Perl.
hello, Python.
hello, Ruby.

untilはwhileの逆の動きをする
lang = %w(Perl Python Ruby)
i = lang.length - 1

until i < 0
  puts "hello, #{lang[i]}."
  i -= 1
end

hello, Ruby.
hello, Python.
hello, Perl.
--------------------------------------
