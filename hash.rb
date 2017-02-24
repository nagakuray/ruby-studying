h = Hash.new
h["R1"] = "ruby"

h = Hash.new
h.store("R","ruby")

# h= {"a"=>"b","c"=>"d"}
# p h.keys
# p h.values
# p h.to_a

# h = Hash.new(1)
# h["a"] = 10
# p h["a"]
# p h["x"]

# h = Hash.new do |hash,key|
#   hash[key] = key.upcase
# end
# h["a"] ="b"
# p h["a"]
# p h["x"]

# h = {"a"=>"b","c"=>"d"}
# p h.key?("a")
# p h.has_key?("a")
# p h.include?("a")
# p h.member?("a")
# p h.key?("b")
# p h.has_key?("b")
# p h.include?("b")
# p h.member?("b")
# p h.value?("b")
# p h.has_value?("b")
# p h.empty?
# h2 = Hash.new
# p h2.empty?

# h = {"R"=> "Ruby"}
# p h["R"]
# h.delete("R")
# p h["R"]
#
# p h.delete("P"){|key| "no #{key}"}

# h = {"R"=>"Ruby","P"=>"Perl"}
# p h.delete_if{|key,value| key == "P"}

# table = {"A"=>{"a"=>"x","b"=>"y"},"B"=>{"a"=>"x","b"=>"w"}}
# p table["A"]["a"]
# p table["B"]["b"]

# h = {"a"=>"x"}.merge({"b"=>"y"})
# p h

# 応用例：単語数を数える

count = Hash.new(0)

filename = ARGV[0]
File.open(filename) do |f|
  f.each_line do |line|
    words = line.split
    words.each do |word|
      count[word] += 1
    end
  end
end

hoge= count.sort{|a,b| a[1] <=> b[1]}
hoge.each do |key,value|
  print "#{key}: #{value}\n"
end
