require 'rails_helper'

RSpec.describe "V1::Items", type: :request do
  describe "GET /items" do
    it "returns all items" do
      get v1_items_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /items" do
    it "create an item" do
      post v1_items_path, params: { item: { name: "Example Item", description: "Example Description", price: 100 } }
      expect(response).to have_http_status(200)
      json = JSON.parse(response.body)
      expect(json["status"]).to eq('success')
    end
  end
end
