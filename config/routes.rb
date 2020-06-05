Rails.application.routes.draw do
  resources :saunas, except: [:index]
  devise_for :saunners

  get 'search_area', to: 'saunas#search_area'
  get 'search_facility', to: 'saunas#search_name'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
