Rails.application.routes.draw do
  devise_for :users
  root 'courses#index'
  get 'courses/filter',  to: 'courses#filter', as: :filter
  get 'courses/selection', to: 'courses#search_course', as: :searchcourse
  get 'about', to: 'pages#about'
  resources :profiles , only: [:index]
  resources :courses , only: [:index, :show] do
  resources :reviews, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
