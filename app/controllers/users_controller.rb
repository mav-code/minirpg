class UsersController < ApplicationController

    skip_before_action :authenticate!
  
    def new
      @user = User.new
    end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        redirect_to @user
      else
        flash[:errors] = @user.errors.full_messages
        redirect_to new_user_path
      end
    end

    def show
      @user = User.find(params[:id])
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :password)
    end

end
