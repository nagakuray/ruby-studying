# 3.times do |i|
#   $stdout.puts "#{Random.rand}"
#   $stderr.puts "#{i+1}回出力しました."
# end
#
#
# if $stdin.tty?
#   print "Stdin is TTY.\n"
# else
#   print "Stdin is not a TTY.\n"
# end

# File.open("out.txt") do |file|
#   while line = file.gets
#     puts line
#   end
# end

# file = File.open("out.txt")
# file.close
# p file.closed?

# text = File.read("out.txt")
# puts text

# text = "Hello, Ruby! \n"
# File.write("hello.txt",text)
# read_f = File.read("hello.txt")
# puts read_f

# data = "何かのデータ"
# File.binwrite("bin.dat",data)

# io = File.read("out.txt")

# File.open("out.txt") do |io|
#   while line = io.gets
#     line.chomp!
#     p line
#   end
# end

# File.open("out.txt") do |io|
#   io.each_line do |line|
#     line.chomp!
#     p line
#   end
# end

# $stdin.each_line do |line|
#   printf("%3d %s",$stdin.lineno,line)
# end

# str = "Hello, Ruby.\n"
# File.write("hello.txt",str)
# File.open("hello.txt") do |io|
#   c = io.getc
#   p c
#   io.ungetc(c.downcase)
#   p io.gets
# end



# str = "Hello, Ruby.\n"
# File.write("hello.txt",str)
# File.open("hello.txt") do |io|
#   p io.read(5)
#   p io.read
# end


# --- 出力操作 ---

# $stdout.puts "String", :Symbol , 1/100r

# $stdout.putc(82)
# $stdout.putc("Ruby")
# $stdout.putc("\n")

# size = $stdout.write("Hello.\n")
# p size

# str = "Hello, Ruby.\n"
# File.write("hello.txt",str)
# File.open("hello.txt") do |f|
#   p f.read(5)
#   p f.pos
#   f.pos = 0
#   p f.gets
# end

# str = "Hello, Ruby.\n"
# File.write("hello.txt",str)
# File.open("hello.txt") do |io|
#   p io.gets
#   p io.rewind
#   p io.gets
# end

# io = File.open("hello.txt","w+")
# io.print("hello, world.\n")
# io.rewind
# p io.gets
# io.rewind
# p io.truncate(0)
# p io.rewind
# p io.gets

# File.open("foo.txt","w") do |io|
#   io.binmode
#   io.write "Hello, World.\n"
# end

#  -- buffering ---

# バッファリングされているのがわかるコード
# filename = "buffering.txt"
# File.open(filename, "w") do |file|
#   3.times do |i|
#     # 5byte書き込むごとにファイルのサイズを調べる
#     file.write("a" * 5)
#     puts "#{i+1}回目: #{File.size(filename)}"
#   end
# end
# puts "ended : #{File.size(filename)}"
# p File.read(filename)

# バッファリングしないやりかた flush
# filename = "buffering.txt"
# File.open(filename,"w") do |file|
#   3.times do |i|
#     file.write("a" * 5)
#     file.flush
#     puts "#{i+1}回目: #{File.size(filename)}"
#   end
# end
# puts "ended : #{File.size(filename)}"
# p File.read(filename)

# バッファリングしないやりかた sync
# filename = "buffering.txt"
# File.open(filename,"w") do |file|
#   file.sync = true
#   3.times do |i|
#     file.write("a"*5)
#     puts "#{i+1}回目: #{File.size(filename)}"
#   end
# end
# puts "ended : #{File.size(filename)}"
# p File.read(filename)

# -- command とのやりとり ---
# pattern = Regexp.new(ARGV[0])
# filename = ARGV[1]
# if /.txt$/ =~ filename
#   file = IO.popen("cat #{filename}")
# else
#   file = File.open(filename)
# end
# file.each_line do |line|
#   if pattern =~ line
#     print line
#   end
# end

# filename = ARGV[0]
# open("|cat #{filename}") do |io|
#   io.each_line do |line|
#     print line
#   end
# end

#  --- open-uri library ---
# require 'open-uri'
# # http経由でデータを読み込む
# open("http://www.ruby-lang.org/ja/") do |io|
#   puts io.read
# end
# # ftp経由でデータを読み込む
# filename = "ruby-2.3.0.tar.gz"
# url = "ftp://ruby-lang.org/pub/ruby/2.3/#{filename}"
# open(url) do |io|
#   File.binwrite(filename,io.read)
# end

# --- stringio library ---
# require 'stringio'
#
# io = StringIO.new
# io.puts("A")
# io.puts("B")
# io.puts("C")
# io.rewind
# p io.read

# require 'stringio'
#
# io = StringIO.new("A\nB\nC\n")
# p io.gets
# p io.gets
# p io.gets



#  -- 練習問題 ---
# (1)
# def count_line(filename)
#   count = 0
#   File.open(filename) do |file|
#     file.each_line {count +=1}
#   end
#   puts count
# end
#
# def count_word(filename)
#   count = 0
#   File.open(filename) do |file|
#     file.each_line do |line|
#       new_line = line.chomp.split(' ')
#       count += new_line.size
#     end
#   end
#   puts count
# end
#
# def count_char(filename)
#   count = 0
#   File.open(filename) do |file|
#     file.each_char do |c|
#       count += c.size
#     end
#   end
#   puts count
# end
#
#
# str = <<-EOC
# aaaa bbbbb
# cccc   cccccc
# dddd eeeee
# EOC
#
# filename = "out.txt"
# File.write(filename,str)
# count_line(filename)
# count_word(filename)
# count_char(filename)


# (2)
# str = <<-EOC
# abcdefght
# pppaaaegg
# EOC
# filename = "out.txt"
# File.write(filename,str)

# (2)-(a)
# def reverse(input)
#   open(input,"r+") do |f|
#     p lines = f.readlines
#     f.rewind
#     f.truncate(0)
#     f.write(lines.reverse.join)
#   end
# end

# (2)-(b)
# def reverse(input)
#   open(input,"r+") do |f|
#     lines = f.readlines
#     f.rewind
#     f.truncate(0)
#     f.write(lines[0])
#   end
# end

# (2)-(c)
# def reverse(input)
#   open(input,"r+") do |f|
#     lines = f.readlines
#     f.rewind
#     f.truncate(0)
#     new_lines = lines.reverse
#     f.write(new_lines[0])
#   end
# end

# reverse(filename)



filename = "out.txt"
File.open(filename,"w") do |f|
  100.times do |i|
    str = sprintf("%03d : AAAAAA\n",i+1)
    f.write(str)
  end
end

def tail(line_count,filename)
  queue = Array.new
  open(filename,"r") do |io|
    while line = io.gets
      queue << line
      queue.size
      if queue.size > line_count
        queue.shift
      end
    end
  end
  queue.each do |q|
    puts q
  end
end

tail(20,filename)
