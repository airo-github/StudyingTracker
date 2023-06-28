Rails.application.routes.draw do
  root 'static_pages#top'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  get 'privacy', to: 'static_pages#privacy'
  get 'service', to: 'static_pages#service'
  resources :users, only: %i[new create destroy]
  resource :profile, only: %i[show edit update]
  resource :aaa, only: %i[show edit update]
  resources :study_times, only: %i[new create index update destroy] do
    member do
      patch :finish
    end
  end
end
