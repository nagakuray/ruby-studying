# 7.times do
#   puts "aaaaa"
# end

# 5.times do |i|
#   puts i+1
# end

# sum = 0
# for i in 1..5
#   sum = sum +i
# end
# puts sum

# from = 10
# to = 20
# sum = 0
# (to - from +1).times do |i|
#   sum += (i+from)
# end
# puts sum

# from = 10
# to = 20
# sum = 0
# for i in from..to
#   sum += i
# end
# puts sum

# names = ["awk","perl","python","ruby"]
# for name in names
#   puts name
# end

# i = 1
# while i <3
#   puts i
#   i+=1
# end

# sum = 0
# i = 1
# while sum <50
#   sum += i
#   i+= 1
# end
# puts sum

# names = ["awk","perl","python","ruby"]
# names.each do |name|
#   puts name
# end

# puts "breakの例"
# i = 0
# arry=["perl","python","ruby","schema"]
# arry.each do |lang|
#   i+=1
#   if i ==3
#     break
#   end
#   p [i,lang]
# end
#
# puts "nextの例"
# i = 0
# arry = ["perl","python","ruby","schema"]
# arry.each do |lang|
#   i+=1
#   if i==3
#     next
#   end
#   p [i,lang]
# end


pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

max_matches = 10
matches = 0

file = File.open(filename)
file.each_line do |line|
  if matches >= max_matches
    break
  end
  if pattern =~ line
    matches +=1
    puts line
  end
end
file.close
