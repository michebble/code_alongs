require'pry'

class School

  attr_reader :db

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

  def grade(grade)
    if @db[grade] == nil
      puts "No one is enrolled in grade #{grade}."
    else
      puts @db[grade]
    end
  end

end

binding.pry