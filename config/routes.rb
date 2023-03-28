Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :orders, only: %i[index show create]
      resources :users, only: %i[show create update destroy]
      resources :tokens, only: [:create]
      resources :products
    end
  end
end
