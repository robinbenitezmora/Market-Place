Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[show create update destroy]
      resources :tokens, only: [:create]
      resources :products, only: %i[index show create update]
    end
  end
end
