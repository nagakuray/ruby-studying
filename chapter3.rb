# filename = ARGV[0]
# file = File.open(filename)
# text = file.read
# print text
# file.close

# f = File.open(ARGV[0])
# f.each_line do |line|
#   puts line
# end
# f.close

# pattern = Regexp.new(ARGV[0])
# file = File.open(ARGV[1])
# file.each_line do |line|
#   if pattern =~ line
#     print line
#   end
# end
# file.close
#

# require_relative "grep"
# pattern = Regexp.new(ARGV[0])
# filename = ARGV[1]
# simple_grep(pattern , filename)

require "date"

days = Date.today - Date.new(1993,2,24)
puts days.to_i
