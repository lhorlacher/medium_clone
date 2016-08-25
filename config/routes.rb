Rails.application.routes.draw do
  root 'home#index'

  resources :blogs

  devise_for :users

  mount Commontator::Engine => '/commontator'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
