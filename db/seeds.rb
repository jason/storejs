# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(username: 'ken')

Item.create!(price: 2000, name: 'Jagermeister', image: 'jager.jpg')
Item.create!(price: 3500, name: 'Hennessey', image: 'Hennessy.jpg')
Item.create!(price: 800, name: 'PBR', image: 'pbr.jpg')
Item.create!(price: 800, name: 'Bud Light', image: 'budlight.jpg')
Item.create!(price: 20000, name: 'Big Papa', image: 'papa.jpg')
Item.create!(price: 1000, name: 'Fat Tire', image: 'fattire.jpg')
Item.create!(price: 500, name: 'Shot Glass', image: 'shotglass.jpg')
Item.create!(price: 1000, name: 'Pitcher', image: 'pitcher.jpg')