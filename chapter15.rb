# person = Array.new
# person[0] = "tanaka seiichiro"
# person[1] = "yanagibashi kiyotaka"
# p person
#
# person = Hash.new
# person["tanaka"] = "tanaka seiichiro"
# person["yanagibashi"] = "yanagibashi kiyotaka"
# p person
#
# h1 = {"a" => "b", "c" => "d"}
# p h1["a"]
#
# h2 = {a: "b", c:"d"}
# p h2[:a]
#
# h1 = Hash.new
# h2 = Hash.new('')
# p h1["not_key"]
# p h2["not_key"]
#
#

# h = Hash.new
# h["R"] = "Ruby"
# p h["R"]
#
# h = Hash.new
# h.store("R","Ruby")
# p h.fetch("R")
#
# h = Hash.new
# h.store("R","Ruby")
# p h.fetch("R","(undefa)")
# p h.fetch("N","(undefb)")

# h = {"a"=> "b", "c" =>"d"}
# p h.keys
# p h.values
# p h.to_a
#
# h = Hash.new(1)
# h["a"] = 10
# p h["a"]
# p h["b"]
# p h["c"]

# h = {"a"=>"b","c"=>"d"}
# p h.key?("a")
# p h.has_key?("a")
# p h.include?("z")
# p h.member?("d")

# h = {"a" => "b", "c" => "d"}
# p h.value?("b")
# p h.has_value?("b")

# h = {"a" => "b", "c" =>"d" }
# p h.empty?
# h = Hash.new
# p h.empty?

# h = {"R" => "Ruby"}
# p h["R"]
# h.delete("R")
# p h["R"]

# h = {"R" => "Ruby"}
# p h.delete("P"){|key| "no #{key}" }

# h = {"R" =>"Ruby","P"=>"Perl" }
# p h.delete_if{|key,value| key == "L"}
# p h.reject!{|key,value| key =="L"}

# h = {"a" => "b" , "c" => "d"}
# h.clear
# p h.size

# h = {"k1"  => "v1"}
# g = h
# h.clear
# p g
#
# h = {"k1"=> "v1"}
# g=h
# h = Hash.new
# p g

# table = {"A" => {"a"=>"x", "b"=>"y"}, "B"=>{"a"=>"v","b"=>"w"}}
# p table["A"]["a"]
# p table["B"]["b"]

# h1 = {"a" => "x"}
# h2 = {"b" => "y"}
# h1.merge!(h2)
# p h1

# count = Hash.new(0)
#
# File.open(ARGV[0]) do |f|
#   f.each_line do |line|
#     line.chomp!
#     words = line.split
#     words.each do |word|
#       count[word] += 1
#     end
#   end
# end

# count.each do |key,value|
#   puts "#{key},#{value}"
# end

# count.sort {|a,b| a[1] <=> b[1]}.each do |key,value|
#   print "#{key},#{value}\n"
# end


wday = {sunday: "日曜日",monday: "月曜日", tuesday: "火曜日", thursday: "木曜日", friday: "金曜日",wednesday: "水曜日",saturday:"土曜日"}
# p wday[:sunday]
# p wday[:monday]
# p wday[:saturday]
#
# p wday.size

# wday.each do |key,value|
#   puts "#{key}は#{value}のことです"
# end

def str2hash(str)
  hash = Hash.new("sss")
  ary = str.split(/\s+/)
  while key = ary.shift
    value = ary.shift
    hash[key] = value
  end
  hash
end

p str2hash("aaa aaaa bbb bbbb ccc")
