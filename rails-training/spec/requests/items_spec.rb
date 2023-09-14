require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "GET /items" do
    it "works! (now write some real specs)" do
      get items_index_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /items" do
    it "create an item" do
      post "/items", params: { item: { name: "Example Item", description: "Example Description", price: 100 } }
      expect(response).to have_http_status(200)
    end
  end
end
