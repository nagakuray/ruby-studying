# a = []
# 100.times do |i|
#   a[i] = i + 1
# end

a = (1..100).to_a

# a2 = a.map! { |item| item*100  }
# p a

# a3 = a.delete_if {|item| item %3 !=0 }
# p a

# p a.reverse

# sum = 0
# a.each do |i|
#   sum += i
# end
# p sum

#
# ary = (1..100).to_a
#
# result = Array.new
# 10.times do |i|
#   result << ary[i*10,10]
# end
# p result


# def sum_array(nums1,nums2)
#   result = []
#   nums1.zip(nums2){|a,b| result << a + b}
#   return result
# end
#
# p sum_array([1,2,3],[2,3,4])


# str = <<-EOC
# Hello
# Hello
# EOC
#
# puts str
# p str.split("\n")

# str = "Ruby is an object oriented Programing language"
# # p str.split.sort_by{|item| item.downcase}
#
#
# count = Hash.new(0)
# str.each_char do |c|
#   count[c] += 1
# end
# count.keys.sort.each do |c|
#   printf("'%s' : %s \n", c ,  "*" * count[c].to_i)
# end

wday={"sunday": "日曜日", "monday": "月曜日", "saturday": "土曜日"}
# p wday.size
wday.each do |key,value|
  puts "#{key},#{value}"
end

def str2hash(str)
  array = str.split(/\s+/)
  hash = Hash.new
  while key = array.shift
    value = array.shift
    hash[key] = value
  end
  return hash
end

p str2hash("blue 青 white しろ\nred 赤")
