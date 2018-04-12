require'pry'

class School

  def initialize(school_name)
    @name = school_name
    @db = {}
  end

  def add(student, grade)
    if @db[grade] == nil
      @db[grade] = Array.new
    end
    @db[grade] << student
  end

end

binding.pry