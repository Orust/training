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

  def create_with_transaction
    begin
      ActiveRecord::Base.transaction do
        item = Item.new(item_params)
        tag = Tag.new(name: "新しいタグ")

        item.save!
        tag.save!

        item.tags << tag
      end

      render json: { status: 'success' }, status: :ok
    rescue StandardError => e
      render json: { status: 'error', message: e.message }, status: :unprocessable_entity
    end
  end
end

private

def item_params
  params.require(:item).permit(:name, :description, :price, :category_id)
end
