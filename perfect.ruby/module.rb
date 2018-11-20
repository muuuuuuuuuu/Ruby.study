module Sweet
  def self.lot
    %w(aaa ccc ggg bbb).sample  (sampleは要素をランダムに返す)
  end
end

puts Sweet.lot
puts Sweet.lot
puts Sweet.lot
puts Sweet.lot
ggg
bbb
ggg
ggg

module Sweet
  module Aaa
    puts "ddd"
  end

  class Bbb
    puts "ggg"
  end
end

puts Sweet::Aaa
puts Sweet::Bbb
ddd
ggg
Sweet::Aaa
Sweet::Bbb
