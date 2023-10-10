require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe 'item_created_email' do
    before do
      @item = FactoryBot.create(:item)
      @mail = UserMailer.item_created_email(@item)
    end

    it 'queues the email' do
      expect { @mail.deliver_now }.to change { ActionMailer::Base.deliveries.count }.by(1)
    end

    it 'renders the subject' do
      expect(@mail.subject).to eq('item created')
    end

    it 'renders the receiver email' do
      expect(@mail.to).to eq(['orust_4t@gmail.com'])
    end

    it 'renders the sender email' do
      expect(@mail.from).to eq(['notification@example.com'])
    end

    it 'assigns item.name' do
      expect(@mail.body.encoded).to match(@item.name)
    end
  end
end
