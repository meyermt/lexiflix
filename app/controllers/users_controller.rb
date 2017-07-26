class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new
    user.name = params['name']
    user.email = params['email']
    user.password = params['password']
    user.type = params['type']
    user.level = params['level']
    user.save
    redirect_to users_url, notice: "Thanks for signing up!"
  end

  def index
  end

  def show
    @user = User.find_by(id: params["id"])

    if @user.present? && @user.id == session["user_id"]
      @orders = @user.orders
    else
      redirect_to root_url, notice: "You are not authorized to view that page."
    end
  end


end
