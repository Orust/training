require 'rails_helper'

RSpec.describe ItemTag, type: :model do
  let(:item) { FactoryBot.create(:item) }
  let(:tag) { FactoryBot.create(:tag) }
  let(:item_tag) { ItemTag.new(item: item, tag: tag) }

  describe 'associations' do
    it 'belongs to item' do
      expect(item_tag.item).to eq(item)
    end

    it 'belongs to tag' do
      expect(item_tag.tag).to eq(tag)
    end
  end
end
