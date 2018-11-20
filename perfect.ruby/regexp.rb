正規表現
a = /\d{3}-\d{4}-\d{4}/
puts a === '777-7777-7777'
puts a === '7-7777-7777'

a = /(B) to \1/
puts a === "B to B"
true

puts /(?<number>[0-9]+)/ === "abc-123"
true

/(?<number>[0-9]+)/ === "abc-123"
puts Regexp.last_match[:number]
123
