Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"
  resources :products do
    collection do
      get 'meat'
      get 'fish'
      get 'cup'
      get 'croquette'
      get 'rice'
      get 'noodle'
      get 'side'
      get 'pizza'
      get 'gratin'
      get 'foodstuff'
      get 'sweets'
    end
  end
  resources :reviews, only: [:new, :create]
end
