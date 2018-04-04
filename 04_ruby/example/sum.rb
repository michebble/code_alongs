#  $ ruby sum.rb 2 3
# $ 5

#  .map creates a new array
numArr = ARGV.map do |int|
  int.to_i
end
puts numArr.sum

#  .each acesses the array element individually
sum = 0
ARGV.each do |int|
  sum =sum + int.to_i
end
puts sum
