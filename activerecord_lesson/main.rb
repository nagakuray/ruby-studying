require 'active_record'
require 'pp'
require 'logger'


Time.zone_default = Time.find_zone! 'Tokyo'
ActiveRecord::Base.default_timezone = :local

# logger 標準出力
# ActiveRecord::Base.logger =Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  'adapter' => 'sqlite3',
  'database' => './myapp.db'
)

class User < ActiveRecord::Base
  # class method
  # def self.top3
  #   select("id,name,age").order("age").limit(3)
  # end

  def self.top(num)
    select("id,name,age").order("age").limit(num)
  end

  
  # scope
  scope :top3, -> {select("id,name,age").order("age").limit(3)}

end

User.delete_all

User.create(name:'tanaka',age: 19)
User.create(name:'nagakuray',age: 18)
User.create(name:'mizzoguchi',age: 45)
User.create(name:'egashira',age: 49)
User.create(name:'otsuka',age: 39)

# pp User.all
# pp User.select("id,name,age").all
# pp User.select("id,name,age").first
# pp User.select("id,name,age").first(3)
# pp User.select("id,name,age").last

# pp User.select("id,name,age").find(3)
# pp User.select("id,name,age").find_by(name: "tanaka")
# pp User.select("id,name,age").find_by(name: "kiriya")

#  where

# pp User.select("id,name,age").where(age: 20...30)
# pp User.select("id,name,age").where("age >=20")
# pp User.select("id,name,age").where.not(id: 3)


# place-holder
# min = 10
# max = 30
# pp User.select("id,name,age").where("age >= ? and age < ?",min,max)
# pp User.select("id,name,age").where("age >= :min and age < :max",{min: min,max: max})
# pp User.select("id,name,age").where("name like ?","%i")

# # order
# pp User.select("id,name,age").order("age")
# pp User.select("id,name,age").order(:age)
#
# pp User.select("id,name,age").order("age desc")
# pp User.select("id,name,age").order(age: :desc)

# limit
# pp User.select("id,name,age").order(:age).limit(3)s
# pp User.select("id,name,age").order(:age).limit(3).offset(1)

# pp User.top3
pp User.top(2)
