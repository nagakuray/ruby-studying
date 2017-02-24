# ad = ARGV[0].to_i
# heisei = ad -1988
# puts heisei

# p "".empty?
# p "AAA".empty?
# p /Ruby/ =~ "Ruby"
# p /Ruby/ =~ "Diamond"

# a = 10
# b = 20
# if a > b
#   puts "a > b"
# elsif a < b
#   puts "a < b"
# else
#   puts "a == b"
# end

# a = 10
# b = 20
# unless a > b
#   puts "a <= b"
# end


# tags = ["A","IMG","PRE"]
# tags.each do |tagname|
#   case tagname
#   when "P","A","B"
#     puts "#{tagname} has child."
#   when "IMG","BR"
#     puts "#{tagname} has no child"
#   else
#     puts "#{tagname} cannnot be used."
#   end
# end

# array = ["a",1,nil]
# array.each do |item|
#   case item
#   when String
#     puts "item is String."
#   when Numeric
#     puts "item is Numeric"
#   else
#     puts "item is something"
#   end
# end

hoge = "hogehogehoge"
fuga = "fugafugafuga"

id1 = hoge.object_id
id2 = fuga.object_id

p hoge.equal?(fuga)
