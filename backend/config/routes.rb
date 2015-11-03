Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :bands, only: [:index, :show, :create, :new, :destroy]
    end
  end
end
