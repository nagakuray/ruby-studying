# ary1 = ["a","b","c"]
# ary2 = ["b","c","d"]
#
# p (ary1 & ary2)
# p (ary1 | ary2)
# p (ary1 - ary2)
#
# num = [1,2,3]
# even = [2,4,6]
#
# p (num + even)
# p (num | even)
#

# alpha = ["a","b","c","d","e"]
# p alpha.push("f")
# p alpha.shift
# p alpha

# alpha = ["a","b","c","d","e"]
# p alpha.push("f")
# p alpha.pop
# p alpha

# a = [1,2,3,4,5]
# p a.first
# p a.last
# p a

# a = [1,2,3,4,5]
# a.unshift(0)
# p a

# a = [1,2,3,4,5]
# a.concat([8,9])
# p a

# a = [1,2,3,4,5,6,7,8,]
# a[2..4]=0
# p a
# a[1,3] = 9
# p a

#
# a = [1,nil,3,nil,nil]
# b = a
# a.compact!
# p b

# a = [1,2,3,2,1]
# b = a
# a.delete(2)
# p a

# a = [1,2,3,4,5]
# a.delete_at(2)
# p a

# a = [1,2,3,4,5]
# a.delete_if{|i| i >3}
# p a
#
# b = [1,2,3,4,5]
# b.reject!{|i| i >3}
# p b

# a = [1,2,3,4,5]
# p a.slice!(1,2)
# p a

# a = [1,2,3,4,5,4,3,2]
# a.uniq!
# p a
#
# a = [1,2,3,4,5]
# a.shift
# p a

# a = [1,2,3,4,5]
# a.pop
# p a

# a = [1,2,3,4,5]
# a.collect! {|item| item*2}
# p a

# a = [1,2,3,4,5]
# a.map!{|item| item *2}
# p a

# a = [2,3,4,5,3,2,4]
# a.map!{|item| item *2 }
# p a

# a = [1,2,3,4,5,6]
# p a.fill(0)
# p a.fill(0,2)
# p a.fill(0,2..3)

# a = [1,[2,[3]],[4],5]
# a.flatten!
# p a
#
# a.reverse!
# p a

# a = [2,4,3,5,1]
# a.sort!
# p a
#
# b = [2,3,4,5,1]
# p b.sort{|i,j| i<=>j}

# a = [2,3,4,5,1]
# p a.sort_by{|i| -i}

# list = ["a","b","c","d"]
# for i in 0..list.size-1
#   print i+1, "番目の要素は" ,list[i],"です\n"
# end

# list = [1,2,3,5,7,9]
# sum = 0
# for i in 0..list.size-1
#   sum  += list[i]
# end
# print sum

# list = [1,3,5,6,8]
# sum = 0
# list.each do |elem|
#   sum += elem
# end
# print sum

# list = [1,2,4,5,6,7,8]
# list.each_with_index do |elem,i|
#   print i+1,"ばんめの要素は",elem,"です\n"
# end

# ary1 = [1,2,3,4,5]
# ary2 = [10,20,30,40,50]
# ary3 = [100,200,300,400,500]
# i = 0
# result = []
# # hoge = ary1.length == ary2.length && ary1.length ==ary3.length
# # p hoge.class
# while i < ary1.length
#   result << ary1[i] + ary2[i] + ary3[i]
#   i += 1
# end
# p result

# ary1 = [1,2,3,4,5]
# ary2 = [10,20,30,40,50]
# ary3 = [100,200,300,400,500]
#
# result = []
# ary1.zip(ary2,ary3) do |a,b,c|
#   result << a + b + c
# end
# p result
