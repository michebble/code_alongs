# fish = {
#   name: 'nemo',
#   health: 10,
#   spead: 2
# }
require 'pry'

class Fish #starts with capital letter, camelCase
  def initialize(name) #this will autorun when a Fish is created
    puts "A new fish is born"
    # health = 10 # scope - local variable
    @health = 10 #instance variable
    @speed = 5
    @name = name
  end

  # getter
  def get_name
    return @name
  end

  # setter
  def set_name(new_name)
    @name = new_name
  end

  def sleep
  end
end

class Plant
  def initialize
    @heealth = 5
  end
end

binding.pry

puts "welcome to the underwater world"