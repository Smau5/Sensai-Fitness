Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :company_lead_sources
  resources :company_leads
  resources :company_sale_representatives
  resources :company_lead_transaction_sources
  resources :company_lead_transactions
  resources :resource_types
  resources :discipline_types
  resources :fitness_resources
  resources :fitness_resource_discipline_types
  resources :specialities
  resources :instructors
  resources :materials
  resources :plans
  resources :search_plans
  resources :resource_equipments
  resources :quiz
  
  get '/get_image/:filename' => 'images#ver'
  
  root 'landing_pages#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
end
