# hello1 = Proc.new do |name|
#   puts "Hello, #{name}"
# end
# hello2 = Proc.new do |name|
#   puts "Hello, #{name}"
# end
# hello1.call("World")
# hello2.call("Ruby")


# 西暦の年を与えれたときにうるう年かどうかを判定する処理
# leap = Proc.new do |year|
#   year % 4 == 0 && year % 100 != 0 || year % 400 == 0
# end

# p leap.call(20000)
# p leap.call(2013)
# p leap.call(2016)


#  --- 配列を渡す ---
# double = Proc.new do |*args|
#   args.map{|i| i*2}
# end
# p double.call(1,2,3)
# args = Proc.new do |args|
#   args.map{|i| i *2}
# end
# fuga = [1,2,3,4]
# p args.call(fuga)
#
# hoge = Proc.new do |name|
#   p name
# end
# hoge.call()


# --- ラムダ式 ---
# proc1 = Proc.new do |a,b,c|
#   p [a,b,c]
# end
# proc1.call(2,3,4)
# proc1.call(2,3)
#
# proc2 = lambda do |a,b,c|
#   p [a,b,c]
# end
# proc2.call(2,3,4)
# proc2.call(2,3) # このケースはエラー

# def power_of(n)
#   lambda do |x|
#     return x ** n
#   end
# end
# cube = power_of(3)
# p cube.call(5)
#
# def power_of_proc(n)
#   Proc.new do |x|
#     return x ** n
#   end
# end
# cube = power_of_proc(3)
# cube.call(5) # この場合はエラーになる

# def prefix(ary,obj)
#   result = []
#   ary.each do |item|
#     result << item
#     if item == obj
#       return result
#     end
#   end
#   return result
# end
# p prefix([1,2,3,4,5],3) # [1,2,3]を返す。3が見つかったらそこまでの配列を返却するため
# p prefix([1,2,4,5,6],3) # [1,2,4,5,6]を返す。3が見つかるまで検索するため


# -- Proc引数でブロックを受け取る ---
# def total2(from,to,&block)
#   result = 0
#   from.upto(to) do |num|
#     if block
#       result += block.call(num)
#     else
#       result += num
#     end
#   end
#   return result
# end
# p total2(1,10)
# p total2(1,10){|num| num**2}

# --- to_procメソッド ---
# p %w(42 39 59).map{|string| string.to_i}
# p %w(42 39 59).map(&:to_i) # 上をシンプルにこんな感じで書ける
# p [Integer,String,Array,Hash,File,IO].sort_by(&:name)


# -- Procの特徴 ---
# クロージャー

# def counter
#   c = 0
#   # Procオブジェクトを返却する
#   Proc.new do
#     c += 1
#   end
# end

# c1 = counter # counterメソッドを実行し、Procオブジェクトを返している
# p c1.call
# p c1.call
# p c1.call
# c2 = counter
# p c2.call
# p c2.call
# p c1.call #　続きからカウントアップされる。


# クロージャーの例　その1 高階関数
# def circle_area_func(pi)
#   Proc.new do |radius|
#     pi * radius ** 2
#   end
# end
# c1 = circle_area_func(3.14)
# p c1.call(1)
# p c1.call(2)
# c2 = circle_area_func(3.141592)
# p c2.call(1)
# p c2.call(2)

# クロージャーの例 その2 値の保存
# def counter
#   c = 0
#   Proc.new do |i|
#     c += i
#   end
# end
# c = counter
# p c.call(1)
# p c.call(1)
# p c.call(2)


# -- FizzBuzz --
fizz = proc{|n| n%3 == 0}
buzz = proc{|n| n%5 == 0}
fizzbuzz = proc{|n| fizz[n] && buzz[n]}

(1..100).each do |i|
  case i
  when fizzbuzz then
    puts "Fizz Buzz"
  when fizz then
    puts "Fizz"
  when buzz then
    puts "Buzz"
  else
    puts i
  end
end
