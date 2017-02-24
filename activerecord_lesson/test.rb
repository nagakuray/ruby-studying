require 'active_record'
require 'pp'

Time.zone_default = Time.find_zone! 'Tokyo'
ActiveRecord::Base.default_timezone = :local


ActiveRecord::Base.establish_connection(
  'adapter' => 'sqlite3',
  'database' => './myapp.db'
)

class Hoge < ActiveRecord::Base
  self.table_name = 'hoge'
end

# insert

hoge = Hoge.new
hoge.name = "tanaka"
hoge.age = 23
hoge.save

hoge = Hoge.new(name: "hayashi",age:25)
hoge.save
Hoge.create(name: "hoshi",age: 22)

10000000.times do |i|
  name_v = "nagakuray-" + sprintf("%07d",1)
  Hoge.create("name" => name_v,"age" => i+1)
end
