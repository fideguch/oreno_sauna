Rails.application.routes.draw do
  resources :saunas, except: [:index]
  devise_for :saunners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
