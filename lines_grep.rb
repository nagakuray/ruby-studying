pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
max_matches = 10
matches = 0
count = 0
file = File.open(filename)
file.each_line do |line|
  count += 1
  if matches >= max_matches
    break
  end
  if pattern =~ line
    matches +=1
    puts "#{count}行目: #{line}"
  end
end
