require 'rails_helper'

RSpec.describe Category, type: :model do
  it "should have many items" do
    category = FactoryBot.create(:category)
    item1 = FactoryBot.create(:item, category: category, name: "melon")
    item2 = FactoryBot.create(:item, category: category, name: "apple")
    expect(category.items).to eq([item1, item2])
  end
end
