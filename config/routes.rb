Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'flats#index'
  resources :flats do
    collection do
      get :search
    end
  end
end
