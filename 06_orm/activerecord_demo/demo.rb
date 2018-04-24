require'active_record'
require'pry'

# database settings 
options = {
  adapter: 'postgresql',
  database: 'goodfoodhunting'
}

ActiveRecord::Base.establish_connection(options)


# mapping class to table
# mapping dish class to dishes table

class Dish < ActiveRecord::Base
  has_many :comments # plural
end  

# mapping dish class to comments table
class Comment < ActiveRecord::Base
  belongs_to :dish # singular dish_id
  belongs_to :user # user_id
end

binding.pry

puts "did you enjoy the magic?"