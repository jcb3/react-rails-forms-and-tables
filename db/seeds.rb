# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[1,2,3,4,5,6,7,8,9,10].each_with_index do |i|
  Record.create(title: "Record #{i}", date: Date.today, amount: i * 2)
end
