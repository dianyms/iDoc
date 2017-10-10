Rails.application.routes.draw do

  get 'home/index'
  root 'home#index'

  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'

  resources :step_scenarios #cria 8 rotas de forma automatica
  resources :scenarios
  resources :actor_use_cases
  resources :actors
  resources :glossaries
  resources :use_case_requirements
  resources :use_cases
  resources :requirements
  resources :project_users
  resources :projects
  resources :users
  resources :admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
