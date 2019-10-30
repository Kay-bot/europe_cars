# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    
User.destroy_all
user1 = User.create(name: 'luke', password_digest: BCrypt::Password.create('Jedi'), email: 'luke@ga.com')
user2 = User.create(name: 'han', password_digest: BCrypt::Password.create('Falcon'), email: 'han@ga.com')
user3 = User.create(name: 'leia', password_digest: BCrypt::Password.create('Alderaan'), email: 'leia@ga.com')
user4 = User.create(name: 'admin', password_digest: BCrypt::Password.create('Password1'), email: 'admin@ga.com')

Car.destroy_all      
Car.create([
    {make: 'Audi', model: 'A3 S line Auto quattro', year:2018, color: 'White', image:"https://i.imgur.com/LxUTE5E.jpg", user_id: user1.id},
    {make: 'Audi', model: 'S3 Auto quattro', year:2019, color: 'Yellow', image: "https://i.imgur.com/eCYf2aC.jpg", user_id: user2.id},
    {make: 'Audi', model: 'A4 45 TFSI', year:2019, color: 'Blue', image:"https://i.imgur.com/PLuFHdS.jpg", user_id: user3.id},
    {make: 'Audi', model: 'A4 45 TFSI', year:2019, color: 'Blue', image:"https://i.imgur.com/PLuFHdS.jpg", user_id: user4.id},
])

Post.destroy_all
Post.create( [
    {name: 'luke', title: 'Post1', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', user_id: user1.id},
    {name: 'han', title: 'Post2', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', user_id: user2.id},
    {name: 'leia', title: 'Post3', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', user_id: user3.id},
    {name: 'admin', title: 'Post4', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', user_id: user4.id}
]

)