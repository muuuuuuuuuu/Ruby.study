・複数の条件を記述するにはcase式（caseは場合）
case式はwhen else endで記述
a = 1
case a
when 1
  p "aに1代入実行"
when 2
  p "aに2代入実行"
else
  p "だめ"
end

a = 5
case a % 3
when 0
  p a + 3
when 1
  p a + 2
when 2
  p a + 1
end
-------------------------------------------------------
