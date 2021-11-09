Rails.application.routes.draw do
  root 'home#index'
  resources :visitor_questions, only: [:create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
