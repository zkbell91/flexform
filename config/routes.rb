Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :forms do
        resources :questions
      end
    end
  end
end