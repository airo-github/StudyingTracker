Rails.application.routes.draw do
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create] 
  resources :study_times, only: %i[new create index update] 
  
  resource :profile, only: %i[show edit update]
end
