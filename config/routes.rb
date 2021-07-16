Rails.application.routes.draw do
  namespace :api do
    resources :emails
  end
end
