# def hello(name)
#   puts "Hello, #{name}"
# end
#
# hello(ARGV[0])


def hello(name="Ruby")
  puts "Hello, #{name.upcase}"
end

hello()
hello(ARGV[0])
