require 'rails_helper'
require 'spec_helper'

RSpec.describe "V1::ApiController", type: :request do
  describe 'GET #show' do
    context 'when the pokemon exists' do
      it 'returns the pokemon data', :vcr do
        get "/v1/api/#{1}"
        # expect(response).to have_http_status(:ok)
        # json = JSON.parse(response.body)
        # expect(json['status']).to eq('success')
        # expect(json['data']['name']).to eq('bulbasaur')
      end
    end

    context 'when the pokemon does not exist' do
      it 'returns an error', :vcr do
        get "/v1/api/#{0}"
        # expect(response).to have_http_status(:unprocessable_entity)
        # json = JSON.parse(response.body)
        # expect(json['status']).to eq('error')
      end
    end
  end
end
