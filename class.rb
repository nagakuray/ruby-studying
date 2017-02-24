# class HelloWorld
#   # initializeメソッドとは、インスタンスが生成されたら呼ばれるメソッド
#   # 初期化処理などはここに記述する
#   def initialize(myname ="Ruby")
#     # @nameはインスタンス変数
#     # インスタンス変数とは、同じインスタンスであれば、メソッド定義を超えてその値を変更したり、参照できる変数
#     # インスタンス変数はインスタンスメソッドから参照できる
#     @name = myname
#   end
#
#   def name
#     @name
#   end
#
#   def name=(value)
#     @name = value
#   end
#
#   def hello
#     puts "hello, world. I am #{@name}"
#   end
#
# end
#
# bob = HelloWorld.new("Bob")
# alice = HelloWorld.new("Alice")
# ruby = HelloWorld.new
#
# p bob.name
# bob.name = "Robert"
# p bob.name
#
#
# # class HelloWorld
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#   end
#
#   def greet
#     puts "Hello, I am #{self.name}"
#   end
#
#   def test_name
#     name = "Ruby"
#     self.name = "Ruby"
#   end
#
# end
#
# bob = HelloWorld.new("bob")
# bob.greet
# puts bob.test_name
# bob.name = "Hoge"
# puts bob.test_name
# puts bob.name

# こっからクラスメソッド
# 3つくらい書き方がある
# class HelloWorld
#   # 1個目
#   class << self
#     def hello(name)
#       puts "#{name} said Hello"
#     end
#   end
#
#   # 2こめ
#   def HelloWorld.goodbye(name)
#     puts "#{name} said goodbye"
#   end
#
#   # 3こめ
#   def self.welcome(name)
#     puts "#{name} said welcome"
#   end
#
# end
#
# HelloWorld.hello("John")
# HelloWorld.goodbye("Bob")
# HelloWorld.welcome("Hanako")
#

# 定数
# class HelloWorld
#   Version = 1.0
# end
#
# p HelloWorld::Version

# クラス変数
#
# class HelloCount
#   @@count = 0
#
#   def self.count
#     @@count
#   end
#
#   def initialize(myname="Ruby")
#     @name=myname
#   end
#
#   def hello
#     @@count +=1
#     puts "Hello,world. I am #{@name}.\n"
#   end
# end
#
# bob=HelloCount.new("Bob")
# alice=HelloCount.new("Alice")
# ruby=HelloCount.new
#
# p HelloCount.count
# bob.hello
# alice.hello
# ruby.hello
#
# p HelloCount.count
