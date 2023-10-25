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
      # allow(UserMailer).to receive_message_chain(:item_created_email, :deliver_now)

      post v1_items_path, params: { item: { name: "Example Item", description: "Example Description", price: 100, category_id: 141 } }
      expect(response).to have_http_status(200)
      json = JSON.parse(response.body)
      expect(json["status"]).to eq('success')

      mail = ActionMailer::Base.deliveries.last
      expect(mail.subject).to eq('item created')
      expect(mail.to).to eq(['orust_4t@gmail.com'])

      # expect(UserMailer).to have_received(:item_created_email)
    end
  end

  describe 'POST #create_with_transaction' do
    context '正常系' do
      it 'ItemとTagが正常に作成される' do
        post v1_items_path, params: { item: { name: 'テストアイテム', description: 'テスト説明', price: 1000, category_id: 141 } }

        expect(response.status).to eq(200)
        expect(JSON.parse(response.body)['status']).to eq('success')
      end
    end

    context '異常系' do
      it 'Itemの保存に失敗すると、トランザクションがロールバックされる' do
        post v1_items_path, params: { item: { name: '', description: 'テスト説明', price: 1000, category_id: 141 } }

        expect(response.status).to eq(422)
        expect(JSON.parse(response.body)['status']).to eq('error')
      end

      it 'Tagの保存に失敗すると、トランザクションがロールバックされる' do
        # allow_any_instance_of(Tag).to receive(:save!).and_raise(StandardError.new("Tagの保存に失敗"))

        fake_tag = double("Tag")
        allow(fake_tag).to receive(:save!).and_raise(StandardError.new("Tagの保存に失敗"))
        allow(Tag).to receive(:new).and_return(fake_tag)

        post v1_items_path, params: { item: { name: 'テストアイテム', description: 'テスト説明', price: 1000, category_id: 141 } }

        expect(response.status).to eq(422)
        expect(JSON.parse(response.body)['status']).to eq('error')
      end
    end
  end
end
