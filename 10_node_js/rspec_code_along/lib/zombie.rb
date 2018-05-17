class Zombie

  attr_reader :name, :brains_eaten
  
  def initialize(name = 'Fred', brains_eaten = 0, hungry = true)
    @brains_eaten = brains_eaten
    @name = name
    @hungry = hungry
  end

  def hungry?
    @hungry
  end

  def eat_brain
    @brains_eaten += 1
    @hungry = false
  end

end