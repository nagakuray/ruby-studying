# モジュールとは
#  - モジュールはインスタンスを持つことができない
#  - モジュールは継承できない
#
# モジュールを利用するケース
#  - 2つのクラスに似たような機能を持っているだけで、同じ種類（クラス）と考えたくない
#  - Rubyの継承は複数のスーパークラスを持てない仕様になっているため、すでに継承を行なっていると、うまく共通化できない


module MyModule
  # 共通して提供したいメソッドなど
  def test1
    p FileTest.exists?("/usr/bin/ruby")
  end
  def test2
    p FileTest.size("/usr/bin/ruby")
  end
  # モジュールのメソッドを公開するやり方
  module_function :test1, :test2

end

class MyClass1
  include MyModule
  # MyClass1に固有のメソッドなど
end

class MyClass2
  include MyModule
end
#
# obj1 = MyClass1.new
# obj1.test1
# obj1.test2

# モジュール関数を利用できるやり方
MyModule.test1
MyModule.test2

p Math::PI
p Math.sqrt(2)
