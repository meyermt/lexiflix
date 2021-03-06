class SessionsController < ApplicationController

  def new
  end

  def create
    u = User.find_by(username: params["username"])

    if u != nil
      if u.authenticate(params["password"])
        if u.otp
          session["user_id"] = u.id
          @user = u
          redirect_to "/resets/#{@user.id}/edit", alert: "You must change your password, you are currently using a one time password."
        else
          session["user_id"] = u.id
          redirect_to "/videos", notice: "Welcome back, #{u.name}!"
        end
      else
        redirect_to "/sessions/new", alert: "Bad password"
      end
    else
      redirect_to "/sessions/new", alert: "Unknown user"
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Join us again soon!"
  end

end
