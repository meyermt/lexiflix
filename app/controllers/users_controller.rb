class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new
    @user.name = params['name']
    @user.username = params['username']
    @user.email = params['email']
    @user.password = params['password']
    @user.level = params['level'].to_i
    @user.otp = false
    @user.admin = nil
    if @user.save
      @s_users = []
      if params['student_count'].to_i > 0
        could_save = true
        params['student_count'].to_i.times do |i|
          print("iterating through students for user: " + String(@user.id))
          s_user = User.new
          print("you are on index #{i}")
          s_user.name = params['student_name_' + String(i)]
          s_user.username = params['student_username_' + String(i)]
          s_user.email = params['email']
          s_user.password = SecureRandom.uuid #TODO: gotta substring this
          s_user.level = params['student_level_' + String(i)].to_i
          s_user.otp = true
          s_user.admin = @user.id
          if !s_user.save
            could_save = false
            print("unable to save a studen user")
          else
            @s_users << s_user
          end
        end
      end
      if could_save
        UserMailer.welcome_email(@user, @s_users).deliver_now
        redirect_to "/sessions/new", notice: "Thanks for signing up!"
      else
        redirect_to "/sessions/new", notice: "One or more of your students were not able to be added. Please visit your user screen to add them."
      end
    else
      render 'new'
    end
  end

  def index
  end

  def edit
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      redirect_to root_url, notice: "You need to login first."
    end
  end

  def show
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      redirect_to root_url, notice: "You are not authorized to view that page."
    end
  end


end
