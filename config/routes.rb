Rails.application.routes.draw do
  resources :messages
  resources :rooms do
    resources :guest_sessions, only: [:new, :create]
  end
  root to: 'rooms#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
