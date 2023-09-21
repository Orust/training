require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "category association" do
    it "should belong to category" do
      category = FactoryBot.create(:category)
      item = FactoryBot.create(:item, category: category)
      expect(item.category).to be_present
    end
  end

  describe "item_tags association" do
    it "should have many item_tags" do
      item = FactoryBot.create(:item)
      tag1 = FactoryBot.create(:tag, name: "tag1")
      tag2 = FactoryBot.create(:tag, name: "tag2")

      item.tags << tag1
      item.tags << tag2

      expect(item.tags.count).to eq(2)
      expect(item.tags).to include(tag1, tag2)
    end
  end
end
