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
    {make: 'Abarth', model: '695 Rivale Convertible', year:2019, color: 'Tributo Ferrari Grey Metallic', image:"https://i.imgur.com/2VJ4n5c.jpg?1", price:'$54,942', key_features:'4 cylinder Petrol - Unleaded ULP Turbo Intercooled, 5 speed Manual, Front Wheel Drive, Petrol - Unleaded ULP 6 L/100km', user_id: user1.id},
    {make: 'Alfa', model: 'Romeo Giulia Sedan', year:2019, color: 'Stromboli Grey Metallic', image: "https://i.imgur.com/kDC6gxV.jpg?1", price:'$68,424', key_features:'4 cylinder Petrol - Premium ULP Turbo Intercooled, 8 speed Automatic, 8 speed Automatic, 8 speed Automatic, Petrol - Premium ULP 6 L/100km', user_id: user2.id},
    {make: 'Alpine', model: 'A110 Pure Coupe', year:2019, color: 'Iris White Prestige', image:"https://i.imgur.com/vxPigFd.jpg?1", price:'$111,625', key_features:'4 cylinder Petrol Turbo Intercooled, 7 speed Automatic, Rear Wheel Drive, Petrol 6.2 L/100km', user_id: user3.id},
    {make: 'Aston', model: 'Martin Vanquish S Ultimate Convertible', year:2019, color: 'Ultimate Black Metallic', image:"https://i.imgur.com/ayOG5kd.jpg?1", price:'$618,237', key_features:'12 cylinder Petrol - Unleaded ULP Aspirated, 8 speed Automatic,Rear Wheel Drive, Petrol - Unleaded ULP 13.1 L/100km', user_id: user4.id},
])

Post.destroy_all
Post.create( [
    {name: 'Luke', title: 'ADVICE: When is it time to buy a new car?', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', body_long:'Long text to add here', image:'https://i.imgur.com/XtqnxZ2.jpg?1', user_id: user1.id},
    {name: 'Han', title: 'Audi A1 2019 Review', content: 'More refined Audi A1 repositions itself at the premium end of the light and city car segment, intent on luring a broader market. The 2019 Audi A1 has grown up, in its second-generation offering now on sale in Australia – both physically and metaphorically. The 2019 ', body_long:'Long text to add here', image:'https://i.imgur.com/1XF3SFu.jpg?1', user_id: user2.id},
    {name: 'Leia', title: 'BMW M8 Competition Coupe priced', content: 'Orders now open for new 460kW BMW M performance flagship. The fastest production BMW M model will land in Aussie showrooms early next year, priced from an eye-watering $352,900 plus on-road costs.', body_long:'Long text to add here', image:'https://i.imgur.com/NfYNJ1c.jpg?1', user_id: user3.id},
    {name: 'Admin', title: 'BMW X5 v Mercedes-Benz GLE v Volkswagen Touareg 2019 Comparison.', content: 'Can Volkswagen most luxurious Touareg ever beat two other big new German premium SUVs at their own game? When it comes to large prestige SUVs, orsprung cousin, the Audi Q7', body_long: 'Long text to add here', image:'https://i.imgur.com/rryf3Y8.jpg?1', user_id: user4.id},
]
)