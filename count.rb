
count = Hash.new(0)

File.open("COPYING") do |f|
  f.each_line do |line|
    words = line.chomp!.split
    words.each do |word|
      count[word] += 1
    end
  end
end

sort_count = count.sort{|a,b| a[1] <=> b[1]}
sort_count.each do |key,value|
  puts "#{key}: #{value}"
end

p sort_count.max{|x,y| x[1]<=>y[1]}
