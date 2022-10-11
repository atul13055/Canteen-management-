Rails.application.routes.draw do
 
  devise_for :users
  root to: "home#index"

  resources :menu_cards do
    resources :users do
      resources :orders 
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
