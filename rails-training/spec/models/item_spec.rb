require 'rails_helper'

RSpec.describe Item, type: :model do
  it "should belong to category" do
    category = FactoryBot.create(:category)
    item = FactoryBot.create(:item, category: category)
    expect(item.category).to be_present
  end
end
