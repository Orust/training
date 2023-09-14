Rails.application.routes.draw do
  root "articles#index"

  namespace :v1 do
    post 'items', to: 'items#create'
  end
end
