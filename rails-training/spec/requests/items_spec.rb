require 'rails_helper'

RSpec.describe "V1::Items", type: :request do  # V1::Items に変更
  describe "GET /items" do
    it "works! (now write some real specs)" do
      get v1_items_path  # items_index_path を v1_items_path に変更
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
