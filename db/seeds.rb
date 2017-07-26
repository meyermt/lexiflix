# Reset the 'users' table
User.delete_all

cookie_monster = User.create name: 'Cookie Monster', email: 'cookies@example.com', title: 'admin', level: nil, admin: nil, password: 'cookies'
margaret = User.create name: 'Margaret Hamilton', email: 'margaret@example.com', title: 'student', level: '3', admin: 'Cookie Monster', password: 'apollo'
alan = User.create name: 'Alan Turing', email: 'alan@example.com', title: 'student', level: '4', admin: 'Cookie Monster', password: 'enigma'
grace = User.create name: 'Grace Hopper', email: 'grace@example.com', title: 'student', level: '4', admin: 'Cookie Monster', password: 'counterclockwise'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
