Rails.application.routes.draw do
  root "articles#index"

  namespace :v1 do
    resources :items, only: [:index, :create]
  end
end
