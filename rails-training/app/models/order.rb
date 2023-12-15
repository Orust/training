class Order < ApplicationRecord
  has_many :order_items
  enum status: { pending: 0, completed: 1 }

  def complete_order
    update(status: :completed)
    OrderCompletedEvent.new(self).process
  end
end
