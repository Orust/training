require 'rails_helper'

RSpec.describe "V1::UsersController", type: :request do
  describe "GET #index" do
    it "returns http success" do
      FactoryBot.create(:user)
      get v1_users_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    context '正常系' do
      before do
        @user = FactoryBot.build(:user)
      end

      it "returns http success" do
        post v1_users_path, params: { user: { name: @user.name, email: @user.email } }
        expect(response).to have_http_status(:success)
      end
    end
    context '異常系' do
      before do
        @user = FactoryBot.build(:user)
      end

      it "returns http success" do
        post v1_users_path, params: { user: { name: nil, email: nil } }
        expect(response).to have_http_status(422)
      end
    end
  end
end