# lang = %w(Ruby Perl Python Schema Pike REBOL)
# p lang
#
# lang = %i(Ruby Perl Python Schema Pike REBOL)
# p lang
#
# color_table = {black: "#000000", white: "#FFFFFF"}
# p color_table.to_a
#
# column = "2016/01/01, foo.html, proxy.sample.co.jp".split(",")
# p column
#
# alpha = %w(a b c d e f)
# p alpha.values_at(1,3,5)
#
#
# ary1 = ["a", "b", "c"]
# ary2 = ["b", "c", "d"]
#
# p ary1 + ary2
# p ary1 & ary2
# p ary1 - ary2
# p ary1 | ary2

# alpha = ["a","b","c","d","e"]
# p alpha.push("f")
# p alpha.shift
# p alpha

# p alpha = ["a","b","c","d","e"]
# p alpha.push("f")
# p alpha.pop
# p alpha
#
# a = [1,2,3,4,5]
# p a.first
# p a.last
# p a

# a = [1,2,3,4,5]
# a.unshift(0)
# p a
#
# a = [1,2,3,4,5]
# a << 6
# p a

# a = [1,2,3,4,5]
# a.concat([8,9])
# p a
#
# a = [1,2,3,4,5,6,7,8]
# a[2..4] = [0,0,0]
# p a

# a = [1, nil, 3, nil,nil]
# a.compact!
# p a
#
# a = [1,2,3,2,1]
# a.delete(2)
# p a
#
# a = [1,2,3,4,5]
# a.delete_at(2)
# p a
#
# a = [1,2,3,4,5]
# a.delete_if {|i| i >3}
# p a
#
# a = [1,2,3,4,5]
# p a.slice!(1,2)
# p a
#
# a = [1,2,3,4,3,2,1]
# a.uniq!
# p a
#
# a = [1,2,3,4,5]
# a.shift
# p a
#
# a = [1,2,3,4,5]
# a.pop
# p a
#

# a = [1,2,3,4,5]
# a.collect! {|item| item *2}
# p a
#
# a = [1,2,3,4,5]
# a.map!{|item| item *2}
# p a
#
# p [1,2,3,4,5].fill(0)
# p [1,2,3,4,5].fill(0,2)
# p [1,2,3,4,5].fill(0,2,2)
# p [1,2,3,4,5].fill(0,2..4)

# a = [1,[2,[3]],[4],5]
# p a
# a.flatten!
# p a
# a.reverse!
# p a
# a.sort!
# p a
#
# a = [2,3,4,5,1]
# p a.sort_by{|i| - i}


# a = 1..5
# b = a.collect {|item| item+=2}
# p b
#
# list = ["a", "b","c","d"]
# for i in 0..3
#   print i+1 ,"番目の要素は",list[i], "です\n"
# end
#
# list = [1,2,3,4,5,7,9]
# sum = 0
# for i in 0..4
#   sum+= list[i]
# end
# print "sum = ",sum,"\n"
#
# list = [1,3,5,7,9]
# sum = 0
# list.each do |elem|
#   sum += elem
# end
# print "sum =",sum,"\n"

# list = ["a","b","c","d"]
# list.each_with_index do |elem,i|
#   print i+1, "番目の要素は",elem,"です\n"
# end
#
# a = Array.new(3) do
#   [0,0,0]
# end
# p a
#
# a[0][2] = 9
# p a

# ary1 = Array.new(5){|item| item+=1 }
# ary2 = Array.new(5){|item| item = (item+1) *10 }
# ary3 = Array.new(5){|item| item = (item+1) *100 }
#
# result = []
# ary1.zip(ary2,ary3) do |a,b,c|
#   result << a + b + c
# end
# p result

a = Array.new(100){|item| item+=1}
# p a
# a2 = a.map!{|item| item *100}
# p a
# a3 = a.delete_if{|item| item%3 != 0}
# p a
# p a.reverse

# sum = 0
# a.each do |i|
#   sum += i
# end
# p sum

# ary = (1..100).to_a
# result  = Array.new
# 10.times do |i|
#   result << ary[i*10,10]
# end
# p result

# def sum_array(nums1,nums2)
#   result =[]
#   nums1.zip(nums2) do |a,b|
#     result << a + b
#   end
#   result
# end
# p sum_array([1,2,3],[4,6,8])
