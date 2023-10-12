class V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    users = User.all
    render json: { status: 'success', data: users }, status: :ok
  end

  def create
    user = User.new(user_params)

    if user.save!
      WelcomeEmailJob.perform_async(user.id)
      render json: { status: 'success', data: user }, status: :ok
    else
      render json: { status: 'error', data: user.errors }, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
