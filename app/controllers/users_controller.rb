class UsersController < ApplicationController
  def new
    @user = User.new
  end
      
  def create
    @user = User.new(user_params)
    if params[:password_confirmation] == params[:password] and @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
