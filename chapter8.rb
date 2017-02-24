# class HelloWorld
#   class << self
#     def hello(name)
#       puts "#{name} said hello"
#     end
#   end
# end
# HelloWorld.hello("hoge")

# class HelloWorld
#   Version = 1.0
# end
# p HelloWorld::Version

# class HelloCount
#   @@count = 0
#
#   def HelloCount.count
#     @@count
#   end
#
#   def initialize(myname = "Ruby")
#     @name = myname
#   end
#
#   def hello
#     @@count += 1
#     puts "Hello,World. I am #{@name}. \n"
#   end
#
# end
#
# bob = HelloCount.new("BOb")
# alice = HelloCount.new("Alice")
# ruby = HelloCount.new
#
# p HelloCount.count
# bob.hello
# p HelloCount.count
# alice.hello
# ruby.hello
# p HelloCount.count



# class AccTest
#   public
#   def pub
#     puts "pub is a public method."
#   end
#
#   private
#   def priv
#     puts "priv is a private method."
#   end
# end
#
# acc = AccTest.new
# acc.pub
# acc.priv

# class Point
#   attr_accessor :x , :y
#
#   def initialize(x=0.0 , y=0.0)
#     @x , @y = x, y
#   end
#
#   def swap(other)
#     tmp_x , tmp_y = @x,@y
#     @x, @y = other.x,other.y
#     other.x ,other.y = tmp_x,tmp_y
#     return self
#   end
#
# end
#
# p0 = Point.new
# p1 = Point.new(1.0,2.0)
# p [p0.x, p0.y]
# p [p1.x, p1.y]
#
# p0.swap(p1)
# p [p0.x, p0.y]
# p [p1.x, p1.y]


# # 既存のクラスにメソッドを追加する
#
# class String
#   def count_word
#     ary = self.split(/\s+/)
#     return ary.size
#   end
# end
#
# str = "Just Another Ruby Newbie"
# p str.count_word


# class RingArray < Array
#   def [](i)
#     idx = i % size
#     super(idx)
#   end
# end
#
# wday = RingArray["日","月","火","水","木","金","土"]
# p wday[6]
# p wday[11]
# p wday[15]
# p wday[-1]


# class C1
#   def hello
#     "Hello"
#   end
# end
#
# class C2 < C1
#   alias old_hello hello
#
#   def hello
#     "#{old_hello}, again"
#   end
#
# end
#
# obj = C2.new
# p obj.old_hello
# p obj.hello


# シングルとん
# str1オブジェクトだけが利用できるクラス
# str1 = "ruby"
# str2 = "ruby"
#
# class << str1
#   def hello
#     "Hello , #{self}!"
#   end
# end
#
# p str1.hello
# p str2.hello

#
# module MyModule
#   def hello
#     puts "hello World"
#   end
# end
#
# class MyClass1
#   include MyModule
#   def initialize
#     hello
#   end
# end
#
# class MyClass2
#   include MyModule
# end
# obj = MyClass1.new


# module HelloModule
#   Version = 1.0
#   def hello(name)
#     puts "Hello, #{name}"
#   end
#   def foo
#     p self
#   end
#   module_function :hello, :foo
# end
#
# p HelloModule::Version
# HelloModule.hello("Alice")
# HelloModule.foo
#
# include HelloModule
# p Version
# hello("Alice")
# foo
#
# p HelloModule::Version


module M
  def meth
    "meth"
  end
end

class C
  include M
end

c = C.new
p c.meth
