# emails = [
#   'nagakuray@gmail.com',
#   'nagakuray@icloud.com'
# ]
require 'yaml'

# emails = YAML.load_file('mydata.yml')
# p emails

# File.open('mydata.yml') do |io|
#   YAML.load_documents(io) do |d|
#     p d
#   end
# end

users = [
  {'name' => 'taguchi', 'score' => 90},
  {'name' => 'nagakuray', 'score' => 100},

]
puts users.to_yaml
