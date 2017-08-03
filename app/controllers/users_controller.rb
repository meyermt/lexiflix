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
            print("unable to save a student user")
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

  def update
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      redirect_to root_url, notice: "You need to login first."
    end
    @user.name = params['name']
    @user.username = params['username']
    if @user.save
      redirect_to root_url, notice: "Thanks for your order! We will ship it when we feel like it."
    else
      render 'edit'
    end
  end

  def show
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      redirect_to root_url, notice: "You are not authorized to view that page."
    end
  end

  def change_password
    @user = User.find(@current_user)
    current_password = params[:user][:current_password]
    user = User.authenticate(@user.email, current_password)
    if @user && user
      # @user.update.password = params[:new_password]
      # new_password = params[:password]
      # @user.update(new_password)
      User.update(@user, change_password_params)
      @user.save
      flash[:success] = "Password successfully changed!"
      redirect_to user_path(@current_user)
    else
      flash[:danger] = "Your old password was incorrect. Please try again."
      redirect_to user_path(@current_user)
    end
  end

end
