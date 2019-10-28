# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    
User.destroy_all
user1 = User.create(name: 'luke', password_digest: BCrypt::Password.create('Jedi'), email: 'luke@ga.com')
user2 = User.create(name: 'han', password_digest: BCrypt::Password.create('Falcon'), email: 'han@ga.com')
user3 = User.create(name: 'leia', password_digest: BCrypt::Password.create('Alderaan'), email: 'leia@ga.com')

Car.destroy_all      
Car.create([
    {make: 'Audi', model: 'A3 S line Auto quattro', year:2018, color: 'White', image:"http://www.fillmurray.com/200/200", user_id: user1.id},
    {make: 'Audi', model: 'S3 Auto quattro', year:2019, color: 'Black', image:"http://www.fillmurray.com/200/200", user_id: user2.id},
    {make: 'Audi', model: 'A4 45 TFSI', year:2019, color: 'White', image:"http://www.fillmurray.com/200/200", user_id: user3.id}
])