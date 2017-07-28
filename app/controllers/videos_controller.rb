class VideosController < ApplicationController
#AIzaSyDNp6dI2h-M4NfqAJN-dr5_9uiKfZA9MU8

  # def require_login
  #   @user = User.find_by(id: session[:user_id])
  #   if @user.blank?
  #     redirect_to root_url, notice: "You need to login first."
  #   else
  #     @user = Student.find_by(id: session[:student_id])
  #
  # end

  def index
    @videos = Video.all
  end

  def show

  end

end
