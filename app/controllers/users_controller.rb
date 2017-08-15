class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params['name']
    @user.username = params['username']
    @user.email = params['email']
    @user.password = params['password']
    @user.password_confirmation = params['password_confirmation']
    @user.level = params['level'].to_i
    @user.otp = false
    @user.admin = nil
    if @user.save
      could_save = true
      @s_users = []
      if params['student_count'].to_i > 0
        params['student_count'].to_i.times do |i|
          s_user = User.new
          s_user.name = params['student_name_' + String(i)]
          s_user.username = params['student_username_' + String(i)]
          s_user.email = params['email']
          randPass = SecureRandom.uuid[0...8]
          s_user.password = randPass
          s_user.password_confirmation = randPass
          s_user.level = params['student_level_' + String(i)].to_i
          s_user.otp = true
          s_user.admin = @user.id
          if !s_user.save
            could_save = false
            print("unable to save a student user")
          else
            # TODO: This is pretty bad for any sort of security. Should be removed after mailer works
            # Until mailer starts working, will need to do this and view console log to test student users
            print("Student #{s_user.username} has password of #{s_user.password}")
            @s_users << s_user
          end
        end
      end
      if could_save
        # TODO: Get mailer to work
        # UserMailer.welcome_email(@user, @s_users).deliver_now
        redirect_to "/sessions/new", notice: "Thanks for signing up!"
      else
        render 'new', notice: "One or more of your students were not able to be added. Please visit your user screen to add them."
      end
    else
      render 'new'
    end
  end

  def index
    @user = User.find_by(id: session[:user_id])
    if @user.blank? && @user.owner != true
      redirect_to root_url, notice: "You need to be an owner to view users."
    end
    @users = User.all
  end

  def edit
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      redirect_to root_url, notice: "You need to login first."
    end
    # are we acting on a student's behalf
    if params['student_id'] != nil
      @student_delegate = true
      @user = User.find_by(id: params['student_id'])
    else
      @student_delegate = false
    end
  end

  def update
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      redirect_to root_url, notice: "You need to login first."
    end
    if params['student_id'] != nil # you are changing a student's thing
      @user = User.find_by(id: params['student_id'])
      @user.level = params['level'].to_i
    elsif params['is_student'] == 'true'
      @user.username = params['username']
    else
      @user.username = params['username']
      @user.level = params['level'].to_i
      @user.email = params['email']
    end
    @user.name = params['name']
    if @user.save
      @user = User.find_by(id: session[:user_id])
      redirect_to "/users/#{@user.id}", notice: "Profile successfully updated."
    elsif params['student_id'] != nil
      @student_delegate = true
      render 'edit'
    else
      @student_delegate = false
      render 'edit'
    end
  end

  def show
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      redirect_to root_url, notice: "You are not authorized to view that page."
    end
  end

  def destroy
    @user = User.find_by(id: session[:user_id])
    if @user.blank? && @user.admin == nil
      redirect_to root_url, notice: "You are not authorized to view that page."
    end
    if params['student_id'] != nil
      @user = User.find_by(id: params['student_id'])
      @user.destroy
      @user = User.find_by(id: session[:user_id])
      redirect_to "/users/#{@user.id}", notice: "Student profile has been removed."
    elsif params['is_student']
      redirect_to root_url, notice: "You cannot delete this account."
    else
      redirect_to root_url, notice: "Sorry to see you go, but thanks for watching with us!"
    end
  end

  def is_student_action(user)
    if params["student"]
      return true
    else
      return false
    end
  end

end
