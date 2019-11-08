# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    resources :categories, only: [:index]
    post :quote, controller: :quotes, action: :generate
  end
end
