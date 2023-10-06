require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryBot.create(:user) }

  it 'has a valid factory' do
    expect(subject).to be_valid
  end

  it 'has a valid name' do
    expect(subject.name).to eq('FactoryName')
  end

  it 'has a valid email' do
    expect(subject.email).to eq('factory@example.com')
  end
end
