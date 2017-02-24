# module M
#   def meth
#     "meth"
#   end
# end
#
# class C
#   include M
# end

# c = C.new
# p c.meth

# C.include?(M)
#
# p C.ancestors
# p C.superclass

module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def imethod
    "instance method"
  end
end

class MyClass
  extend ClassMethods
  include InstanceMethods
end

p MyClass.cmethod
# p MyClass.new.cmethod
p MyClass.new.imethod
# p MyClass.imethod
