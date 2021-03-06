Rails.application.routes.draw do
  namespace :users do
    resources :orders
  end
  namespace :users do
    resources :cart_items
  end
  root to: 'home#index'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  namespace :admins do
    resources :products
  end

  namespace :users do
    resources :products, only: %i[index show]
  end
end
