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


# Association
# Use -> Commnets
class User < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  # validates :name, presence: true,length: {minimum: 3}
  # validates :age, presence: true

  # # class method
  # # def self.top3
  # #   select("id,name,age").order("age").limit(3)
  # # end
  #
  # def self.top(num)
  #   select("id,name,age").order("age").limit(num)
  # end


  # scope
  # scope :top3, -> {select("id,name,age").order("age").limit(3)}

  before_destroy :print_before_msg
  after_destroy :print_after_msg

  protected
    def print_before_msg
      puts "#{self.name} will be deleted"
    end

    def print_after_msg
      puts "#{self.name} deleted"
    end

end

class Comment < ActiveRecord::Base
  belongs_to :user
end

User.delete_all

User.create(name:'tanaka',age: 19)
User.create(name:'nagakuray',age: 18)
User.create(name:'mizzoguchi',age: 45)
User.create(name:'egashira',age: 49)
User.create(name:'otsuka',age: 39)

Comment.delete_all
Comment.create(user_id: 1, body:"hello-1")
Comment.create(user_id: 1, body:"hello-2")
Comment.create(user_id: 2, body:"hello-3")
Comment.create(user_id: 3, body:"hello-4")

# user = User.find(1)
# # pp user.comments
# user.comments.each do |c|
#   puts "username: #{user.name} age: #{user.age}: #{c.body}"
# end
# comments = Comment.all
# comments.each do |c|
#   puts "#{c.body} by #{c.user.name}"
# end

User.find(1).destroy
pp Comment.select("id,user_id,body").all



# delete  単機能だけど高速
# - delete
# - delete_all
# User.delete(1)
# User.where('age >=25').delete_all
# pp User.select('id,name,age').all

# destroy 高機能だけど低速
#  - destroy
#  - destroy_all


# Validation
# user = User.new(name: nil,age: nil)
# # user.save!
# if !user.save
#   pp user.errors.messages
# end

# callback
# before_destroy
# after_destroy
# User.where("age >= 20").destroy_all


# find_or_create_by
# user = User.find_or_create_by(name: "hayashi")
# pp user
# user = User.find_or_create_by(name: "yokota") do |u|
#   u.age = 18
# end
# pp user

# upadte
# User.update(1,age: 50)
# pp User.select("id,name,age").all
# User.where(name:'tanaka').update(age: 55,name:'tachi')
# pp User.select('id,name,age').all
# User.where('age >20').update(age: '60')
# pp User.select('id,name,age').all


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
# pp User.top(2)
