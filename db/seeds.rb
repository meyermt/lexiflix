# Reset the 'users' table
User.delete_all

adminguy = User.create username: 'admin', name: 'admin', otp: false, owner: true, email: 'admin@gmail.com', level: 0, admin: nil, password: 'password'

cookie_monster = User.create username: 'cookiedude', name: 'Cookie Monster', otp: false, owner: false, email: 'cookies@example.com', level: 800, admin: nil, password: 'cookies'
someone = User.create username: 'someone', name: 'Someone', otp: false, owner: false, email: 'someone@example.com', level: 800, admin: nil, password: 'something'

u = User.find_by(name: 'Someone').id

margaret = User.create username: 'hammy', name: 'Margaret Hamilton', otp: true, owner: false, email: 'someone@example.com', level: 300, admin: u, password: 'apollo'
alan = User.create username: 'completemachine', name: 'Alan Turing', otp: true, owner: false, email: 'someone@example.com', level: 400, admin: u, password: 'enigma'
grace = User.create username: 'pun123', name: 'Grace Hopper', otp: true, owner: false, email: 'someone@example.com', level: 500, admin: u, password: 'counterclockwise'

Video.delete_all

video1 = Video.create title: 'Invader in the Den', loc_id: 'WYcTAAAboC4', icon_url: 'https://i.ytimg.com/vi/WYcTAAAboC4/sddefault.jpg', director: 'Mike Meyer', description: 'Cat learns his lesson after sneaking into a dog den.', script_root_url: 't/b/d'
video2 = Video.create title: 'Big Yawn', loc_id: 'ZH-1JdoTiKU', icon_url: 'https://i.ytimg.com/vi/ZH-1JdoTiKU/sddefault.jpg', director: 'Mike Meyer', description: 'Frustrated dog yawns out his frustration.', script_root_url: 't/b/d'
video3 = Video.create title: 'What You Looking At?', loc_id: '5imNMZDGQ4Y', icon_url: 'https://i.ytimg.com/vi/5imNMZDGQ4Y/sddefault.jpg', director: 'Mike Meyer', description: 'Cat and dog question filmer, possibly life.', script_root_url: 't/b/d'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
