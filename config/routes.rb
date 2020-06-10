Rails.application.routes.draw do
  root 'saunas#index'
  resources :saunas do
    post 'reports', to: 'reports#create'
    resources :reports, except: [:index, :show, :create]
  end

  devise_for :saunners
  resources :saunners, only: [:show, :edit, :update]

  get 'search_area', to: 'saunas#search_area'
  get 'search_facility', to: 'saunas#search_name'
  get 'privacy_policy', to: 'saunas#privacy_policy'
  get 'service_policy', to: 'saunas#service_policy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
