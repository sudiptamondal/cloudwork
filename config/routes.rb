Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sensors
    end
  end
  resources :sensors
  get '/' => "static#home"
  get '/check' => "static#check"
  get 'static/test'
  resources :bookmarks
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
