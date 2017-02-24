# desc = %Q{Rubyも字列'' ""}
# str =%q|"", ''|
# puts desc
# puts str

# 10.times do |i|
#   print(<<-"EOB")
#   i: #{i}
#   EOB
# end

# str = <<-EOF
# Hello!
# Hello!
# EOF
# puts str

# str = `cat /etc/hosts`
# puts str

# p "just another ruby hacker,".length
# p "just another ruby hacker,".size
# p "just another ruby hacker,".bytesize
# p "".empty?
# p "hoge".empty?

# str = "新しいStringクラス"
# p str[0]
# p str[3]
# p str[9]
# p str[1,8]
# p str[4]

# str = "高橋:タカハシ:123456789:000-123-4567"
# column = str.split(/:/)
# p column

# str = "abcde"
# newstr = str.chop
# p newstr
# newstr = str.chomp
# p newstr

# str2 = "hijklmn\n"
# newstr = str2.chop
# p newstr
# newstr = str2.chomp
# p newstr

filename =ARGV[0]
f = File.open(filename)
count = 0
f.each_line do |line|
  line.chomp!
  if(line.include?("the"))
    count += 1
  end
end

puts count
