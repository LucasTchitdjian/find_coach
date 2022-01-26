Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  get 'profesionnels/index'
  get 'profesionnels/show'
  get 'profesionnels/new'
  get 'profesionnels/create'
  get 'profesionnels/edit'
  get 'profesionnels/update'
  get 'profesionnels/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end