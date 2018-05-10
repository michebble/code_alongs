# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stuff = %w|banana orange caramel cake|
things = %w|great awesome bad what|

Quote.destroy_all

Quote.create content: 'perfect is the enemy of good', author: 'Voltaire'
10.times do
  Quote.create content: "#{things.sample} #{stuff.sample}", author: 'Voltaire'
end