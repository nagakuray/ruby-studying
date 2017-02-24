# grep.rbの読み込み
require_relative "grep"

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

# simple_grepメソッドの読み込み
simple_grep(pattern,filename)
