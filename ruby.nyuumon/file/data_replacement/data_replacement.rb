#データを書き換えるクラス

class DataReplacement
  attr_writer :inputfile, :outputfile
  #データを読み込むための処理
  def replace
    File.read(@inputfile).split("\n").each do |content|
      p content
    end
  end
end

replacement = DataReplacement.new
#入力ファイルの指定
replacement.inputfile = ARGV[0]
#出力ファイルの指定

replacement.outputfile = ARGV[1]
#データ書き換え

replacement.replace
