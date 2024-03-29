Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :decks, only: [:index, :create, :destroy] do
        resources :cards, only: [:index]
      end
      resources :cards, only: [:index, :create, :update, :destroy]
    end
  end
end
