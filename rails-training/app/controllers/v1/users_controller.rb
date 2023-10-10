class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)

    if @user.save!
      WelcomeEmailJob.perform_async(@user.id)
      redirect_to users_path
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end