# Reset the 'users' table
User.delete_all

adminguy = User.create username: 'admin', name: 'admin', otp: false, owner: true, email: 'admin@gmail.com', level: 1000, admin: nil, password: 'password', password_confirmation: 'password'

cookie_monster = User.create username: 'cookiedude', name: 'Cookie Monster', otp: false, owner: false, email: 'cookies@example.com', level: 300, admin: nil, password: 'cookies', password_confirmation: 'cookies'
someone = User.create username: 'someone', name: 'Someone', otp: false, owner: false, email: 'someone@example.com', level: 300, admin: nil, password: 'something', password_confirmation: 'something'

u = User.find_by(name: 'Someone').id

margaret = User.create username: 'hammy', name: 'Margaret Hamilton', otp: true, owner: false, email: 'someone@example.com', level: 300, admin: u, password: 'apollo13', password_confirmation: 'apollo13'
alan = User.create username: 'completemachine', name: 'Alan Turing', otp: true, owner: false, email: 'someone@example.com', level: 400, admin: u, password: 'enigma13', password_confirmation: 'enigma13'
grace = User.create username: 'pun123', name: 'Grace Hopper', otp: true, owner: false, email: 'someone@example.com', level: 500, admin: u, password: 'counterclockwise', password_confirmation: 'counterclockwise'

Video.delete_all

video1 = Video.create title: 'Invader in the Den', loc_id: 'WYcTAAAboC4', icon_url: 'https://i3.ytimg.com/vi/WYcTAAAboC4/maxresdefault.jpg', director: 'Mike Meyer', description: 'Cat learns his lesson after sneaking into a dog den.'
video2 = Video.create title: 'Big Yawn', loc_id: 'ZH-1JdoTiKU', icon_url: 'https://i3.ytimg.com/vi/ZH-1JdoTiKU/maxresdefault.jpg', director: 'Mike Meyer', description: 'Frustrated dog yawns out his frustration.'
video3 = Video.create title: 'What You Looking At', loc_id: '5imNMZDGQ4Y', icon_url: 'https://i3.ytimg.com/vi/5imNMZDGQ4Y/maxresdefault.jpg', director: 'Mike Meyer', description: 'Cat and dog question filmer, possibly life.'
video4 = Video.create title: 'Pokemon EP 31', loc_id: 'GjV0KcFetDI', icon_url: 'http://i3.ytimg.com/vi/GjV0KcFetDI/maxresdefault.jpg', director: 'Pokemon Guy', description: 'Thrilling episode of Pokemon.'
video5 = Video.create title: 'Pokemon EP 26', loc_id: 'bbC2yytVYfE', icon_url: 'http://i3.ytimg.com/vi/bbC2yytVYfE/maxresdefault.jpg', director: 'Pokemon Guy', description: 'The 26th thrilling episode of Pokemon.'
video6 = Video.create title: 'Pokemon EP 25', loc_id: 'uKu4kJuPMjk', icon_url: 'http://i3.ytimg.com/vi/uKu4kJuPMjk/maxresdefault.jpg', director: 'Pokemon Guy', description: "In number 25, little animals fight each other. It's great."


Question.delete_all

question1 = Question.create video_id: video2.id, level: 300, query: 'How frustrated does this dog seem?'
question2 = Question.create video_id: video2.id, level: 300, query: 'How cool was the dog in this video?'
question3 = Question.create video_id: video2.id, level: 300, query: 'What did the subtitle tell you that you did not already know?'

Answer.delete_all

answer1a = Answer.create question_id: question1.id, solution: 'He looks very frustrated.', correct: true
answer1b = Answer.create question_id: question1.id, solution: 'Not sure what you mean he looks happy.', correct: false
answer1c = Answer.create question_id: question1.id, solution: 'Maybe more tired than anything.', correct: false
answer2a = Answer.create question_id: question2.id, solution: 'I mean, he is no Fonz.', correct: false
answer2b = Answer.create question_id: question2.id, solution: 'The answer is the coolest.', correct: true
answer2c = Answer.create question_id: question2.id, solution: 'Not cool I hate looking at this creature.', correct: false
answer3a = Answer.create question_id: question3.id, solution: 'There were subtitles?', correct: false
answer3b = Answer.create question_id: question3.id, solution: 'Nothing, I know everything.', correct: false
answer3c = Answer.create question_id: question3.id, solution: 'That you plan on making subtitles better.', correct: true

Result.delete_all

result1 = Result.create user_id: grace.id, video_id: video2.id, level: 300, score: 80


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
