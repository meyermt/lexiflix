class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@lexeo.com'
  layout 'mailer'

  # def welcome_email(user, students)
  #   @user = user
  #   @url = "http://localhost:3000/sessions/new"
  #   mail(to: @user.email, subject: "Welcome to Lexeo")
  # end
end
