require 'net/http'
require 'uri'
require 'json'

class V1::ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    pokemon_id = params[:id]
    uri = URI.parse("https://pokeapi.co/api/v2/pokemon/#{pokemon_id}")

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(uri.request_uri, { 'Content-Type' => 'application/json' })

    response = http.request(request)

    if response.code == '200'
      @data = JSON.parse(response.body)
      render json: { status: 'success', data: @data }, status: :ok
    else
      render json: { status: 'error', message: 'Failed to fetch data' }, status: :unprocessable_entity
    end
  end
end