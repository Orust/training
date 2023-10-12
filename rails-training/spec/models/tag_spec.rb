require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe "item_tags association" do
    it "should have many item_tags" do
      item = FactoryBot.create(:item)
      tag1 = FactoryBot.create(:tag, name: "tag1")
      tag2 = FactoryBot.create(:tag, name: "tag2")

      item.tags << tag1
      item.tags << tag2

      expect(item.tags.count).to eq(3)
      expect(item.tags).to include(tag1, tag2)
    end
  end
end
