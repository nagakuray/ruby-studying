# 3.times do |i|
#   $stdout.puts "#{Random.rand}"
#   $stderr.puts "#{i+1}回出力しました。"
# end
#
# File.open("COPYING") do |file|
#   file.each_line do |line|
#     puts line
#   end
# end


text = "Hello, Ruby!\n"
File.write("hello.txt", text)
p File.read("hello.txt")
File.write("hello.txt","!",5)
p File.read("hello.txt")
