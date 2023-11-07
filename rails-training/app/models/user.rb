class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  def perform_external_action
    external_client = ExternalClient.new
    external_client.query.prepare.execute
  end
end
