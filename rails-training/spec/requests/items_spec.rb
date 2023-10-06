require 'rails_helper'

RSpec.describe "V1::Items", type: :request do
  describe "GET /items" do
    it "returns all items" do
      category = FactoryBot.create(:category)
      FactoryBot.create(:item, category: category, name: "melon")
      get v1_items_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /items" do
    it "create an item and sends an email" do
      post v1_items_path, params: { item: { name: "Example Item", description: "Example Description", price: 100, category_id: 141 } }
      expect(response).to have_http_status(200)
      json = JSON.parse(response.body)
      expect(json["status"]).to eq('success')

      mail = ActionMailer::Base.deliveries.last
      expect(mail.subject).to eq('item created')
      expect(mail.to).to eq(['orust_4t@gmail.com'])
    end
  end
end
