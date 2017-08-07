class ResetsController < ApplicationController

  def new
  end

  def create
    if !params['username'].blank?
      user = User.find_by(username: params['username'])
      if user.blank?
        print 'no did not find user'
        redirect_to '/resets/new', alert: 'Sorry, that username is not recognized.'
      else
        redirect_to root_url, notice: 'An email will be sent shortly with a new temporary password.'
        # send email
      end
    elsif !params['email'].blank?
      user = User.find_by(username: params['email'])
      if user.blank?
        redirect_to '/resets/new', alert: 'Sorry, that email is not recognized.'
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
    if @user.blank?
      redirect_to root_url, alert: "You need to be logged in to change your password."
    end
  end

  def update
    print 'entered the method'
    @user = User.find_by(id: session[:user_id])
    if @user.blank?
      print 'could not find you'
      redirect_to '/sessions/new', alert: "You need to be logged in to change your password."
    end
    if @user.authenticate(params["current_password"])
      print 'authenticated dude'
      @user.password = params['password']
      @user.password_confirmation = params['password_confirmation']
      # in case it was an otp, we'll update it
      @user.otp = false
      if @user.save
        reset_session
        redirect_to "/sessions/new", notice: "Password updated, please login with new password."
      else
        render "edit"
      end
    else
      print 'gonna go here'
      redirect_to "/resets/#{@user.id}/edit", alert: "Incorrect password entered, unable to update password."
    end
  end

end
