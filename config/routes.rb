# frozen_string_literal: true

Rails.application.routes.draw do
  get '/signup', to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :events
  resources :event_attendees, only: %i[create destroy]
  root 'home#index'
end
