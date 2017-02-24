# def volume(x,y,z)
#   return x*y*z
# end
# p volume(2,3,4)
# p volume(10,20,30)

# def area(x,y,z)
#   xy = x*y
#   yz = y*z
#   zx = z*x
#   (xy + yz + zx)*2
# end
# puts area(2,3,4)
# puts area(10,20,30)

# def max(a,b)
#   if a > b
#     a
#   else
#     b
#   end
# end
# p max(10,5)

# def myloop
#   while true
#     yield
#   end
# end
#
# num = 1
# myloop do
#   puts "num is #{num}"
#   break if num > 10
#   num *=2
# end


# def foo(*args)
#   args
# end
#
# p foo(1,3,4)
#


# def meth(arg, *args)
#   [arg,args]
# end
#
# p meth(1)

# def a(a, *b,c)
#   [a,b,c]
# end
#
# p a(1,2,3,4,5)
# p a(1,2)

# def area2(x:0,y:0,z:0)
#   xy = x * y
#   yz = y * z
#   zx = z * x
#   (xy + yz + zx) *2
# end
# p area2(x: 2, y: 3, z: 4)
# p area2(z: 4, x: 2, y: 3)

# def volume(x:,y:4,z:5)
#   x*y*z
# end
#
# p volume(x:2,y:3)
# p volume(y:3,z:4) # ArgumentError

# def meth(x: 0,y: 0,z: 0,**args)
#   [x,y,z,args]
# end
# p meth(z:4,y:3,x:2)
# p meth(w:4,rr:5)


# def foo(a,b,c)
#   a + b + c
# end
# p foo(1,2,3)
# args1 = [2,3]
# p foo(1,*args1)
# args2 = [1,2,3]
# p foo(*args2)

# def foo(arg)
#   arg
# end
# p foo(a:1, b:2)

def bar(arg1,arg2)
  [arg1,arg2]
end

p bar(100, a:1,b:2)
