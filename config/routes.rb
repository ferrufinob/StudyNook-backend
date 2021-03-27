Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :decks, only: [:index] do
        resources :cards, only: [:show, :create]
      end
    end
  end
end
