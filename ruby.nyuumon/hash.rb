man = {height: 170, weight: 65}
p man
{:height=>170, :weight=>65}

要素を取得
p man[:height]
170

要素を追加
man[:age] = 33
p man
{:height=>170, :weight=>65, :age=>33}

要素を消す
man.delete(:weight)
p man
{:height=>170, :age=>33}

要素を追加
man.store(:aaa, 445)
p man
{:height=>170, :weight=>65, :aaa=>445}
