require_relative'school'

school = School.new("Haleakala Hippy School")
p school.db
school.add("James", 2)
p school.db
school.add("Phil", 2)
school.add("Jennifer", 3)
school.add("Little Billy", 1)
p school.db
school.grade(2)
school.sort