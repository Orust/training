Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  root "v1/items#index"

  namespace :v1 do
    resources :items, only: [:index, :create]
  end
end
