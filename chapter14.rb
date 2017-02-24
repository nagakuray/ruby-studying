# encoding: utf-8

# p "just another ruby hacker,".length
# p "just another ruby hacker,".size
# p 'あああああオブジェクト指向'.bytesize
# p "".empty?
# p "foo".empty?

# hello = "Hello, "
# world = "World!"
# hello << world
# p hello
# hello.concat(world)
# p hello

# str = "takahashi:aaaa:bbb"
# column = str.split(':')
# p column

# str = "abcde"
# newstr = str.chop
# p newstr
#
# newstr = str.chomp
# p newstr
#
# str2 = "abcde\n"
# newstr = str2.chop
# p newstr
# newstr = str2.chomp
# p newstr

# str = "すもももももも"
# p str.index("もも")
# p str.rindex("もも")

# str = "abcde"
# str[2,1] = "C"
# p str
# p "abcde".slice(2,3)

# str = "あ\nい\nう\n"
# tmp = str.each_line.collect do |line|
#   line.chomp * 3
# end
# p tmp
#
# str = "abcde"
# tmp = str.each_byte.collect do |byte|
#   -byte
# end
# p tmp

# s = "ようこそ"
# s.concat("げすと")
# p s
#
# s = "ken/saku/yo/ke"
# p s.delete("/")
#
# s = "konbanwa"
# p s.reverse
#
# s = " Thank you. "
# p s.strip
#
# p "Object-Oriented Language".upcase
# p "Object-Oriented Language".downcase

# p "あいうえお".tr("いえ","イエ")

# str = %w{Ruby is an oriented programing language}
# p str
# p str.sort
# p str.sort_by{|item| item.downcase}

# str = "Ruby is an oriented programing language"
# count = Hash.new
# str.each_char do |c|
#   count[c] = 0 unless count[c]
#   count[c]+=1
# end
#
# count.keys.sort.each do |item|
#   printf("'%s' : %s \n", item ,'*' * count[item])
# end
