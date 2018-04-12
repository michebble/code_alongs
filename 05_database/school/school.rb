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

    # @db = Array(@db[:grade]).push student
  end

  def grade(grade)
    if @db[grade] == nil
      puts "No one is enrolled in grade #{grade}."
    else
      puts @db[grade].join(', ')
    end
  end

  def sort
    @db.each_value do |names|
      names.sort!
    end
    puts @db.sort.to_h
  end

end

binding.pry