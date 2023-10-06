class V1::ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    items = Item.all
    render json: { status: 'success', data: items }, status: :ok
  end

  def create
    item = Item.new(item_params)
    if item.save
      UserMailer.item_created_email(item).deliver_now
      render json: { status: 'success', data: item }, status: :ok
    else
      render json: { status: 'error', data: item.errors }, status: :unprocessable_entity
    end
  end
end

private

def item_params
  params.require(:item).permit(:name, :description, :price, :category_id)
end
