class LoginController < ApplicationController

    skip_before_action :authenticate!
  
    def new
    end
  
    def create
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user
      else
        flash[:errors] = ["Username or password did not match"]
        redirect_to new_login_path
      end
    end
  
    def destroy
      
      session[:user_id] = nil
      flash[:notification] = "We'll be seeing you again"
      redirect_to new_login_path
    end
  
  
  end
