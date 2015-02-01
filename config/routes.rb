Rails.application.routes.draw do
  namespace :api do
    resources :books, only: :index
  end
end
