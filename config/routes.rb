Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # root to: "messages#index"
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
<<<<<<< Updated upstream
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
=======
  resources :rooms, only: [:new, :create]
end
>>>>>>> Stashed changes
