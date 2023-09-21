class Item < ApplicationRecord
  has_many :item_tags
  has_many :tags, through: :item_tags
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end