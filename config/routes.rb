# config/routes.rb
Rails.application.routes.draw do
  resources :employees, only: [:index]
end
