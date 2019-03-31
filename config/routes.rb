Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :company_lead_sources
  resources :company_leads
  root 'landing_pages#index'
end
