Rails.application.routes.draw do
  resources :cohort_students
  resources :courses
  resources :cohorts
  resources :students
  devise_for :users
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'
  
end
