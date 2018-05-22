Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'courses/filter',  to: 'courses#filter', as: :filter
  get 'courses/selection', to: 'courses#searchcourse', as: :searchcourse
  resources :courses , only: [:index, :show] do
    resources :reviews, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
