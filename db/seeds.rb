# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
hotel1 = Hotel.create(name: 'hotel1')
hotel2 = Hotel.create(name: 'hotel2')
['Deb', 'Repository'].each do |rc|
  hotel1.room_categories.create(name: rc)
end
['Source', 'Repository', 'Deb'].each do |rc|
  hotel2.room_categories.create(name: rc)
end
