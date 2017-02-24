#キーと値の配列をそれぞれ定義
keys = %w[ushi tori]
vals = %w[beef chicken]

p keys.zip
p Hash[keys.zip vals]
#2つの配列をハッシュに変換する
hash = Hash[*([keys, vals].transpose.flatten)]
# ここは
# hash = Hash[keys.zip vals]
# とした方が短い！(同じ結果が得られます)

#出力してみる
p hash
