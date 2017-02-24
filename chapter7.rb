# インスタンスメソッド
# レシーバーがオブジェクト

# p "10,14,12,54,33".split(",")
# p [1,2,3,4].index(2)
# p 1000.to_s
# p Time.now.to_s

# クラスメソッド
# レシーバーがクラスそのもの
# Array.new
# Time.now
# Time::now

# 関数的メソッド
# レシーバがないメソッド
# print "hello"
# sleep(10)

# def hello(name)
#   puts "hello, #{name}"
# end
# hello("ruby")

# def hello(name="ruby")
#   puts "hello #{name}"
# end
# hello("hoge")
# hello()

# def volume(x,y,z)
#   x*y*z
# end
# p volume(2,3,4)
#
# def area(x,y,z)
#   xy = x * y
#   yz = y * z
#   zx = z * x
#   (xy + yz + zx) * 2
# end
# p area(2,3,4)
#
# def max(a,b)
#   if a > b
#     a
#   else
#     b
#   end
# end
# p max(10,5)

# a = 10
# b = 5
# max = (a > b) ? a : b
# p max
#
# def myloop
#   while true
#     yield
#   end
# end
# num = 1
# myloop do
#   puts "num is #{num}"
#   break if num > 10
#   num *= 2
# end

# def area2(x:0 ,y:0,z:0)
#   xy = x*y
#   yz = y *z
#   zx= z* x
#   (xy+yz+zx) *2
# end
# p area2(x:2,y:3,z:5)

# def volume(x:,y:2,z:5)
#   x*y*z
# end
# # p volume(x:2)
# # p volume(y:3,z:3)
# args = {x:2,y:3,z:5}
# p volume(args)

# def foo(a,b,c)
#   a+b+c
# end
# p foo(1,2,3)
# args =[2,3]
# p foo(1,*args)
# args = [1,2,3]
# p foo(*args)

# def foo(arg)
#   arg
# end
# p foo({"a"=>1,"b"=>2})
# p foo("a"=>1,"b"=>2)
# p foo(a:1,b:2).class
# p foo([1,2,3]).class

def bar(args1,args2)
  [args1,args2]
end
hoge = bar(100,{a:1,b:2})
fuga = bar(100,{"a"=>1,"b"=>2})
