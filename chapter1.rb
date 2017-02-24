# a = 8
# if a >= 10
#   print "greater\n"
# end
# if a <= 9
#   print "smaller\n"
# end

# a = 10
# if a >=10
#   print "greater\n"
# else
#   print "smaller\n"
# end


# i=1
# while i<=10
#   p i
#   i+=1
# end
#

# 100.times do
#   print "all work and no play makes jack a doll boy\n"
# end

# names = ["a","b","c","d"]
# names.each do |name|
#   puts name
# end

# address = {name: "高橋",furigana: "タカハシ",postal: "12345"}
# song = {:title =>"paranoid android",:artist => "Raduihead"}
# person = {"名前"=>"高橋","仮名"=> "タカハシ"}
# person1 = {name: "hoge", kana: "hoge"}
# p person1
#

# address = {name: "タカハシ",furigana:"タカハシ"}
# p address[:name]
# p address[:furigana]
# address.each do |key,value|
#   puts "#{key},#{value}"
# end


# p /Ruby/ =~ "Yet Another Ruby Hacker"
# p /Ruby/ =~ "Ruby"
# p /Ruby/ =~ "Diamond"

# p /Ruby/ =~ "ruby"
# p /Ruby/ =~ "RUBY"
# p /Ruby/i =~ "ruby"
# p /Ruby/i =~ "RUBY"
# p /Ruby/i =~ "rUBy"

# names = ["小林","林","高野","盛岡"]
# names.each do |name|
#   if /林/ =~ name
#     puts name
#   end
# end

puts "最初の引数: #{ARGV[0]}"
puts "第二の引数: #{ARGV[1]}"
