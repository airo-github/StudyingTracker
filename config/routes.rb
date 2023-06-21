Rails.application.routes.draw do
  root 'static_pages#top'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  resources :users, only: %i[new create]
  resource :profile, only: %i[show edit update]
  resources :study_times, only: %i[new create index update] do
    member do
      patch :finish
    end
  end
end
