injectメソッドはたたみ込み演算を行うメソッド

numbers = [1,2,3,4,5]
sum = numbers.inject(30) { |result, n| result + n }
p sum
injectの引数が0の場合15
injectの引数が5の場合20
injectの引数が30の場合45

injectは数値以外のオブジェクトに対して適用する事も可能

number = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat'].inject('sun') { |result, s| result + s }
p number
"sunmontuewedthufrisat"
