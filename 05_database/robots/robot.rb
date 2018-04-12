class Factory
  def initialize
    @robots = []
  end

  def build_robot
    @robots.push(Robot.new)
  end
end


class Robot

  #class variable
  @@robot_count = 0

  def initialize
    @@robot_count += 1 
    @name = "#{prefix}#{suffix}"
  end


  #instance method
  def name
    puts @name
  end

  def prefix
    ('AA'..'ZZ').to_a.sample
  end

  def suffix
    ('000'..'999').to_a.sample
  end
  # instance method
  def reset
  end

  #class method
  def self.info
  end

end