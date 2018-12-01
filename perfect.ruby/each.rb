def hello(names)
  names.each do |name|
    puts "HELLO, #{name.upcase}"
  end
end

rubies = ["MRI","jruby","rubinius"]
hello(rubies)

HELLO, MRI
HELLO, JRUBY
HELLO, RUBINIUS
--------------------------------------
abc = ("a".."c")

abc.each do |c|
  print c
end
↓
abc
----------------------------------------
・ジャンプ構文(break,next,redo)
lang = %w(Perl Python Ruby js html)

lang.each do |lan|
  puts lan

  if lan == "Ruby"
    puts "Rubyを発見"

    break
  end
end
↓
Perl
Python
Ruby
Rubyを発見
breakはRubyを見つけたら処理が止まる
-------------------------------------------------------
lang = %w(Perl Python Ruby js html)

lang.each do |lan|
  puts lan

  next unless lan == "Ruby"

  puts "Rubyを見つけた"
end
↓
Perl
Python
Ruby
Rubyを見つけた
js
html
nextはRubyを見つけても最後まで処理をする
-----------------------------------------------------------
lang = %w(Perl Python Ruby js html)

lang.each do |lan|
  puts lan

  if lan == "Ruby"
    puts "haysay"

    red
  end
end
これは永遠に続くから気をつける！！！！
------------------------------------------------------
puts 'あああ'.each_char { |c| print "#{c}-"}
あ-あ-あ-あああ
-------------------------------------------------------
