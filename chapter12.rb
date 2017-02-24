# ary =[]
# 10.times do |i|
#   ary << i
# end
#
# p ary
#
#
# ary = []
# 2.upto(10) do |i|
#   ary <<i
# end
# p ary
#
# ary = []
# 10.downto(2) do |i|
#   ary <<i
# end
# p ary
#
#
# ary = []
# 2.step(10,3) do |i|
#   ary << i
# end
# p ary
#
# ary = []
# 10.step(2,-3) do |i|
#   ary << i
# end
# p ary
#
# ary = []
# ary = 2.step(10).collect{|i| i * 2}
# p ary
#
# a = 0.1
# b = 0.3
# p [a,b]
# p a == b
#

# def cels_to_fahr(cels)
#   fahr = cels * 9/5 + 32
# end
# # p cels_to_fahr(5)
#
# def fahr_to_cels(fahr)
#   cels = (fahr - 32) * 5/9
# end
#
# 1.upto(100) do |i|
#   puts "#{i}, #{fahr_to_cels(i)}"
# end
#
#
# def dice
#   Random.rand(6) + 1
# end
# p dice
#
# def dice10
#   sum = 0
#   10.times do |i|
#     sum += dice
#   end
#   sum
# end

def prime?(num)
  flg = true
  for i in (2...(num))
    if (num % i == 0)
      flg = false
      break
    end
    flg = true
  end
  flg

end
p prime?(3)
