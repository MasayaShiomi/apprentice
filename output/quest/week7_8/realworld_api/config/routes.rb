Rails.application.routes.draw do
  get '/ping', to: 'application#ping'
  namespace :api do
    resources :articles, param: :slug, only: [:create, :show, :update, :destroy]
  end
end
