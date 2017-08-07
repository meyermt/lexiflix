class ResetsController < ApplicationController

  def new
  end

  def create
    if !params['username'].blank?
      user = User.find_by(username: params['username'])
      if user.blank?
        print 'no did not find user'
        redirect_to '/resets/new', notice: 'Sorry, that username is not recognized.'
      else
        redirect_to root_url, notice: 'An email will be sent shortly with a new temporary password.'
        # send email
      end
    elsif !params['email'].blank?
      user = User.find_by(username: params['email'])
      if user.blank?
        redirect_to '/resets/new', notice: 'Sorry, that email is not recognized.'
      else
        # get the stuff go to mailer
        redirect_to root_url, notice: 'An email will be sent shortly with a new temporary password.'
      end
    else
      # TODO: Add error message here
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: session[:user_id])
    if user.blank?
      redirect_to root_url, notice: "You need to be logged in to change your password."
    end
  end

  def update
    user = User.find_by(id: session[:user_id])
    if user.blank?
      redirect_to root_url, notice: "You need to be logged in to change your password."
    end
    user.password = params['current_password']
    if user.authenticate(params["current_password"])
      user.password = params['new_password']
      user.password_confirmation = params['password_confirmation']
      user.save
    end
  end

end
