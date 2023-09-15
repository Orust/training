Rails.application.routes.draw do
  root "v1/items#index"

  namespace :v1 do
    resources :items, only: [:index, :create]
  end
end
