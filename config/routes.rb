Rails.application.routes.draw do
  namespace :usuarios_backoffice do
    get 'welcome/index'
  end
  
  resources :departamentos
  devise_for :usuarios
  root 'usuarios_backoffice/welcome#index'
  
  

  get "up" => "rails/health#show", as: :rails_health_check

end
