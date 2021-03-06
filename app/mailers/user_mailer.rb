class UserMailer < ApplicationMailer
  default from: 'noreply@lexiflix.com'
  layout 'mailer'

  def welcome_email(user, students)
    print("running the mailer")
    @user = user
    @students = students
    @url = "http://localhost:3000/sessions/new"
    mail(to: @user.email, subject: "Welcome to lexiflix")
  end
end
