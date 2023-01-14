Rails.application.routes.draw do
  root 'subjects#index'

  resources :group_users
  # resources :group_students, path: 'group-students'
  resources :groups
  resources :users
  resources :subjects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
