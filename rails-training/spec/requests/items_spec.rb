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
    it "create an item" do
      category = FactoryBot.create(:category)
      post v1_items_path, params: { item: { name: "Example Item", description: "Example Description", price: 100, category_id: category.id } }
      expect(response).to have_http_status(200)
      json = JSON.parse(response.body)
      expect(json["status"]).to eq('success')
    end
  end
end
