# Reset the 'users' table
User.delete_all

adminguy = User.create username: 'admin', name: 'admin', otp: false, owner: true, email: 'admin@gmail.com', level: 800, admin: nil, password: 'password', password_confirmation: 'password'

cookie_monster = User.create username: 'cookiedude', name: 'Cookie Monster', otp: false, owner: false, email: 'cookies@example.com', level: 800, admin: nil, password: 'cookies', password_confirmation: 'cookies'
someone = User.create username: 'someone', name: 'Someone', otp: false, owner: false, email: 'someone@example.com', level: 800, admin: nil, password: 'something', password_confirmation: 'something'

u = User.find_by(name: 'Someone').id

margaret = User.create username: 'hammy', name: 'Margaret Hamilton', otp: true, owner: false, email: 'someone@example.com', level: 300, admin: u, password: 'apollo13', password_confirmation: 'apollo13'
alan = User.create username: 'completemachine', name: 'Alan Turing', otp: true, owner: false, email: 'someone@example.com', level: 300, admin: u, password: 'enigma13', password_confirmation: 'enigma13'
grace = User.create username: 'pun123', name: 'Grace Hopper', otp: true, owner: false, email: 'someone@example.com', level: 300, admin: u, password: 'counterclockwise', password_confirmation: 'counterclockwise'

Video.delete_all

video1 = Video.create title: 'Invader in the Den', loc_id: 'WYcTAAAboC4', icon_url: 'https://i3.ytimg.com/vi/WYcTAAAboC4/maxresdefault.jpg', director: 'Mike Meyer', description: 'Cat learns his lesson after sneaking into a dog den.'
video2 = Video.create title: 'Big Yawn', loc_id: 'ZH-1JdoTiKU', icon_url: 'https://i3.ytimg.com/vi/ZH-1JdoTiKU/maxresdefault.jpg', director: 'Mike Meyer', description: 'Frustrated dog yawns out his frustration.'
video3 = Video.create title: 'What You Looking At', loc_id: '5imNMZDGQ4Y', icon_url: 'https://i3.ytimg.com/vi/5imNMZDGQ4Y/maxresdefault.jpg', director: 'Mike Meyer', description: 'Cat and dog question filmer, possibly life.'
video4 = Video.create title: 'Pokemon EP 31', loc_id: 'GjV0KcFetDI', icon_url: 'http://i3.ytimg.com/vi/GjV0KcFetDI/maxresdefault.jpg', director: 'Pokemon Guy', description: 'Thrilling episode of Pokemon.'
video5 = Video.create title: 'Pokemon EP 26', loc_id: 'bbC2yytVYfE', icon_url: 'http://i3.ytimg.com/vi/bbC2yytVYfE/maxresdefault.jpg', director: 'Pokemon Guy', description: 'The 26th thrilling episode of Pokemon.'
video6 = Video.create title: 'Pokemon EP 25', loc_id: 'uKu4kJuPMjk', icon_url: 'http://i3.ytimg.com/vi/uKu4kJuPMjk/maxresdefault.jpg', director: 'Pokemon Guy', description: "In number 25, little animals fight each other. It's great."


Question.delete_all

question1 = Question.create video_id: video2.id, level: 300, query: "300 level question - How frustrated does this dog seem?"
question2 = Question.create video_id: video2.id, level: 300, query: "300 level question - How cool was the dog in this video?"
question3 = Question.create video_id: video2.id, level: 300, query: "300 level question - What did the subtitle tell you that you did not already know?"

question4 = Question.create video_id: video1.id, level: 300, query: "300 level question - Why did the cat enter the den?"
question5 = Question.create video_id: video1.id, level: 300, query: "300 level question - Is that cat pure evil?"
question6 = Question.create video_id: video1.id, level: 300, query: "300 level question - Why did the dog enter the den?"

question7 = Question.create video_id: video3.id, level: 300, query: "300 level question - This cat is clearly pure evil, right?"
question8 = Question.create video_id: video3.id, level: 300, query: "300 level question - Why do cats even exist?"
question9 = Question.create video_id: video3.id, level: 300, query: "300 level question - Is the cat up to some evil plan?"

question10 = Question.create video_id: video4.id, level: 300, query: "300 level question - Some pokemon question"
question11 = Question.create video_id: video4.id, level: 300, query: "300 level question - Some pokemon question"
question12 = Question.create video_id: video4.id, level: 300, query: "300 level question - Some pokemon question"

question13 = Question.create video_id: video5.id, level: 300, query: "300 level question - Some pokemon question"
question14 = Question.create video_id: video5.id, level: 300, query: "300 level question - Some pokemon question"
question15 = Question.create video_id: video5.id, level: 300, query: "300 level question - Some pokemon question"

question16 = Question.create video_id: video6.id, level: 300, query: "300 level question - Some pokemon question"
question17 = Question.create video_id: video6.id, level: 300, query: "300 level question - Some pokemon question"
question18 = Question.create video_id: video6.id, level: 300, query: "300 level question - Some pokemon question"

question19 = Question.create video_id: video2.id, level: 800, query: "800 level question - How frustrated does this dog seem?"
question20 = Question.create video_id: video2.id, level: 800, query: "800 level question - How cool was the dog in this video?"
question21 = Question.create video_id: video2.id, level: 800, query: "800 level question - What did the subtitle tell you that you did not already know?"

question22 = Question.create video_id: video1.id, level: 800, query: "800 level question - Why did the cat enter the den?"
question23 = Question.create video_id: video1.id, level: 800, query: "800 level question - Is that cat pure evil?"
question24 = Question.create video_id: video1.id, level: 800, query: "800 level question - Why did the dog enter the den?"

question25 = Question.create video_id: video3.id, level: 800, query: "800 level question - This cat is clearly pure evil, right?"
question26 = Question.create video_id: video3.id, level: 800, query: "800 level question - Why do cats even exist?"
question27 = Question.create video_id: video3.id, level: 800, query: "800 level question - Is the cat up to some evil plan?"

question28 = Question.create video_id: video4.id, level: 800, query: "800 level question - Some pokemon question"
question29 = Question.create video_id: video4.id, level: 800, query: "800 level question - Some pokemon question"
question30 = Question.create video_id: video4.id, level: 800, query: "800 level question - Some pokemon question"

question31 = Question.create video_id: video5.id, level: 800, query: "800 level question - Some pokemon question"
question32 = Question.create video_id: video5.id, level: 800, query: "800 level question - Some pokemon question"
question33 = Question.create video_id: video5.id, level: 800, query: "800 level question - Some pokemon question"

question34 = Question.create video_id: video6.id, level: 800, query: "800 level question - Some pokemon question"
question35 = Question.create video_id: video6.id, level: 800, query: "800 level question - Some pokemon question"
question36 = Question.create video_id: video6.id, level: 800, query: "800 level question - Some pokemon question"

Answer.delete_all

Question.all.each do | question |
  answer1a = Answer.create question_id: question.id, solution: 'I like the first answer.', correct: true
  answer1b = Answer.create question_id: question.id, solution: 'I think it is the second answer.', correct: false
  answer1c = Answer.create question_id: question.id, solution: 'Definitely the third answer.', correct: false
end

Result.delete_all

result1 = Result.create user_id: grace.id, video_id: video2.id, level: 300, score: 66
result2 = Result.create user_id: grace.id, video_id: video2.id, level: 300, score: 100


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
