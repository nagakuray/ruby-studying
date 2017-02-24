

# ファイルの内容をそのまんま読む例
# ファイルを一気に読むので、メモリを消費する,時間もかかる
# 数万行読んで必要なのは一行とかいう場合には向かない

# filename = ARGV[0]
# file = File.open(filename)
# text = file.read
# print text
# file.close

## 以下は一行ずつ読む例

# filename = ARGV[0]
# file=File.open(filename)
# file.each_line do |line|
#   print line
# end
# file.close


## ファイルの中から特定のパターンの行のみを選んで表示する例

pattern = Regexp.new(ARGV[0])
filename= ARGV[1]

file = File.open(filename)
file.each_line do |line|
  if pattern =~ line
    print line
  end
end
file.close
