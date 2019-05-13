Rails.application.routes.draw do
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
  
  
  root 'landing_pages#index'
end
