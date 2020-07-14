Rails.application.routes.draw do
  resources :events
  get 'home/index'
  root to: 'homes#index'
  devise_for :users, skip: [:sessions]
  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
    get 'signup', to: 'devise/registrations#new', as: :new_user
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
