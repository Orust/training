require 'rails_helper'
require 'external_client'

RSpec.describe User, type: :model do
  subject { FactoryBot.create(:user) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  describe '#perform_external_action' do
    it 'executes a prepared query' do
      query_double = double('Query')
      client_double = double('ExternalClient', query: query_double)
      allow(query_double).to receive_message_chain(:prepare, :execute).and_return('result')

      allow(ExternalClient).to receive(:new).and_return(client_double)

      user = User.new
      result = user.perform_external_action

      expect(result).to eq('result')
    end
  end
end
