class Item < ApplicationRecord
  has_many :item_tags
  has_many :tags, through: :item_tags
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  after_create :create_auto_generated_tag

  private

  def create_auto_generated_tag
    self.tags.create(name: "自動生成タグ")
  end
end