# 7.times do
#   puts "はないちもんめ"
# end

# 7.times do |i|
#   puts "#{i+1}:ほげほげ"
# end

# sum = 0
# for i in 1..5
#   sum += i
# end
# puts sum

# from = 1
# to = 10
# sum = 0
# for i in from..to
#   sum+=i
# end
# puts sum

# 一般的なfor文の書き方
# names = ["awk", "perl", "python", "ruby"]
# for name in names
#   puts name
# end

# while文
# i = 1
# while i < 10
#   puts i
#   i += 1
# end

# sum = 0
# i = 1
# while i <= 5
#   sum += i
#   i+=1
# end
# puts sum

# sum = 0
# i = 1
# while sum < 50
#   sum += 1
#   i += 1
# end
# puts sum

# sum = 0
# i = 1
# until sum >= 50
#   sum += i
#   i+=1
# end
# puts sum

# eachメソッド
# names = ["awk", "perl","python","ruby"]
# names.each do |name|
#   puts name
# end
#

# sum = 0
# (1..5).each do |i|
#   sum +=i
# end
# puts sum

# puts "braeakの例"
# i = 0
# names = ["perl","hoge","ruby","C++","Java"]
# names.each do |lang|
#   i += 1
#   if i===3
#     break
#   end
#   p [i,lang]
# end
#
# puts "nextの例"
# i = 0
# names = ["perl","ruby","java","python","sql"]
# names.each do |lang|
#   i += 1
#   if i == 3
#     next
#   end
#   p [i,lang]
# end

# 10.times do |i|
#   puts i
# end
#
# 10.times{|i| puts i}
