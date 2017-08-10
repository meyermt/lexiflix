class ResultsController < ApplicationController

  before_action :require_login

  def require_login
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      redirect_to root_url, notice: "You need to login first."
    end
  end

  def index
    @students = User.where(email: @user.email)
  end

  def show
    @student = User.find_by(id: params['student_id'])
    print "student id is #{params['student_id']}"
    print "user email is #{@user.email} and students is #{@student.email}"
    if @user.email != @student.email
      redirect_to root_url, notice: "Sorry, you are not allowed to view this user's progress."
    end
    @results = Result.where(user_id: @student.id)
  end

  def create
    totalQuestions = 0.0
    totalCorrect = 0.0
    result = Result.new
    result.user_id = @user.id
    video = Video.find_by(id: params['video_id'].to_i)
    result.video_id = video.id
    questionAnswers = params.select { |key, value| key.to_s.match(/question_*/) }.values
    questionAnswers.each do | questionAnswer |
      qArray = questionAnswer.split('_')
      question = Question.find_by(id: qArray[0].to_i)
      result.level = question.level
      answer = Answer.find_by(id: qArray[1].to_i)
      if answer.correct
        totalCorrect += 1
      end
      totalQuestions += 1
    end
    print "total correct is #{totalCorrect}"
    print "total questions is #{totalQuestions}"
    result.score = ((totalCorrect / totalQuestions) * 100).round
    print "score is #{result.score}"
    if result.save
      redirect_to videos_url, notice: "Thanks for answering, continue watching!"
    else
      redirect_to videos_url, alert: "Unable to save your quiz score, please take again some time. Thanks!"
    end
  end

end
