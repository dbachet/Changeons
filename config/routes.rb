Changeons::Application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :mailing_list_recipients, only: [:create]
      resources :links, only: [:index]
      resources :shares, only: [:index]
    end
  end

  root to: "links#index"
  # devise_for :users, controllers: { registrations: 'users/registrations' }
end
