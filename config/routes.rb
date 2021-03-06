Rails.application.routes.draw do

  resources :reviews
  resources :categories
  get 'home/index'
  root 'home#index'

  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  get     'report_glossary'   => 'glossaries#report'
  get     'report_requirement'   => 'requirements#report'
  get     'report_scenario'   => 'scenarios#report'
  get     'report_main'   => 'project_manager#report'
  get     'report_use_case'   => 'use_cases#report'
  get     'report_traceability_matrix' => 'use_cases#report_traceability_matrix'
  get     'report_all' => 'project_manager#report_all'


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
  resources :project_manager
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
